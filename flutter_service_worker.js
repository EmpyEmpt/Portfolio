'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "20605be0e30a8a28d4b4474495dbe75c",
"assets/FontManifest.json": "53df6ab69729c89f9063ace49b0d0aa9",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/fonts/Nunito-ExtraBold.ttf": "a74843c6643f6e795bd30552a5c1d85c",
"assets/fonts/Nunito-Regular.ttf": "ee871891d96eae03cd9092a5f6ef7dcb",
"assets/images/bkbw.jpg": "14e0819b83f7cba7b949d402fc8aacc2",
"assets/images/doggy.png": "8d0a9b3a616ba87e6a2a2870d455f6d6",
"assets/images/Examples/fld_1_in.jpeg": "a443389ad2027bca720253c6bfb21e67",
"assets/images/Examples/fld_1_out.jpeg": "95c3b19d610cc4d66780d9f3c588b45d",
"assets/images/Examples/fld_2_in.jpeg": "e4e7634e9176dc87c43146f640ac054d",
"assets/images/Examples/fld_2_out.jpeg": "cbd7a260ea97fc78c17e2a59732ea8ba",
"assets/images/Examples/mesh_1_in.png": "9252233c55868bd800ada6c5d8a4f745",
"assets/images/Examples/mesh_1_out.png": "400eec6c4224ca15865b7b75b992c392",
"assets/images/Examples/mesh_2_in.png": "8dd70c958e70d2b74b15a5e043103521",
"assets/images/Examples/mesh_2_out.png": "93d7204ef9ae99a7fc53c15f5d37227b",
"assets/images/Examples/segm_1_in.jpeg": "1dc9cf7d0c98f69d45c9507d281a7253",
"assets/images/Examples/segm_1_mask.jpeg": "c66b9fc55bc772af4a543c8f76954bf9",
"assets/images/Examples/segm_1_out.png": "75018a6e782ff8b96ae3719a9f897a4f",
"assets/images/Examples/segm_2_in.jpeg": "c94738715dcaeeaaf818025352878da4",
"assets/images/Examples/segm_2_mask.jpeg": "186819d6e7b8ef4b18059f7064440d6d",
"assets/images/Examples/segm_2_out.png": "a327fbb5539b63ec4c74937a6f358d91",
"assets/images/kittyjpg.jpg": "0de69b5b6385859da203ee207bfdc01d",
"assets/images/QR/fld.png": "5b558347e60431da3112d0dd84e99a39",
"assets/images/QR/git.png": "61719444488b47f7569ce79405a3635e",
"assets/images/QR/mesh.png": "c2ee68f17c4d2c9544a43166891560f5",
"assets/images/QR/segm.png": "7dd783026efce2504e23a30151f355d3",
"assets/images/test.jpg": "c0134aa75a47c78ae4402dc8c674fb67",
"assets/NOTICES": "0cf0da1940c17c4a68e912ebae31fe84",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"favicon.png": "c3ff03eb14ff7d0cd6731cb3c41c8e09",
"flutter.js": "0816e65a103ba8ba51b174eeeeb2cb67",
"icons/android-chrome-192x192.png": "c4ddd9c219075e7fa7d50c340161ca5d",
"icons/android-chrome-512x512.png": "6de1148a4b46958e3c6ad48720d22a9d",
"icons/favicon-16x16.png": "33c92b00806a82a7284666f4beb4efd6",
"icons/favicon-32x32.png": "c3ff03eb14ff7d0cd6731cb3c41c8e09",
"index.html": "c816d4f1339b34066435b92938cd7c96",
"/": "c816d4f1339b34066435b92938cd7c96",
"main.dart.js": "5719846d1c7cfd270fee6ca81417047c",
"manifest.json": "f5ef0c870f6ac7d79280847951fc0ce2",
"version.json": "60a71d692c6e6a566ef45d00a046e4e4"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
