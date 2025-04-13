'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"app_launcher_icon.png": "9e59b61053e35a3cba81d36673f00e8a",
"assets/AssetManifest.bin": "870f1e807b735a4e83aa18650f9d7a2e",
"assets/AssetManifest.bin.json": "819a246cf34137d86cd96a65a124eb26",
"assets/AssetManifest.json": "452a4a80a180fdbf66c26a7bfe2615f6",
"assets/assets/images/0218af1be7.jpg": "d42de954755045b011ea2972acc100f9",
"assets/assets/images/024c8d3a59.jpg": "68229da9b52b759a185e4ce8e93fb94c",
"assets/assets/images/102849000b42d650914852507899192a.jpg": "c3a067a931a61362813c4c5c867cf278",
"assets/assets/images/1730fcd271.jpg": "616490e9b2c3f68eacd846cb29af09d8",
"assets/assets/images/1_(1).jpg": "0b922fa5aaa0fc72fea1a68ab564bf27",
"assets/assets/images/1_(2).jpg": "02bc813678b42c2134038ad000ceec34",
"assets/assets/images/25d3a22dcd.jpg": "3703b352e584f81abaf9de67ab869767",
"assets/assets/images/2_(1).jpg": "352fb3b454e3846ea19bb2cfb1cdaa70",
"assets/assets/images/2_(2).jpg": "5aa964a3df21f7778daa78d3da3d9a74",
"assets/assets/images/2_(2)_reduced.jpg": "bce2e1fc3f2cdb9aa14cb06579da3c18",
"assets/assets/images/3e526c1158.jpg": "589b94f87d56f8be3c2ab876751d4ee2",
"assets/assets/images/3_(1).jpg": "25e109f81981ee62d676d738f66f3af5",
"assets/assets/images/4_(1).jpg": "c08b4721061a73625f125fd944f2d827",
"assets/assets/images/61342b1092.jpg": "3ab04f47a7936044d3858148de618b25",
"assets/assets/images/780b9d73ba.jpg": "6e97522e2f8a9c9f6de3215d3b93a77b",
"assets/assets/images/7a862708bcc07986a991d12aef863c7e.jpg": "f8668e3b0ff604ecb6568d0c8572a4d9",
"assets/assets/images/901b456762.jpg": "d0694e242a1651e60f462bdf64f9ce57",
"assets/assets/images/9ad3b5a9f4.jpg": "06d27ce6046c39c8c6c5149b906d93e9",
"assets/assets/images/a2bb2300dd.jpg": "1d28b99ca83902dd7f9f2675e5946184",
"assets/assets/images/a5c44e762a118115b99a1481c3a124c6.jpg": "d942d0b8b70f98df3a542b21327b56fc",
"assets/assets/images/app_launcher_icon.png": "9e59b61053e35a3cba81d36673f00e8a",
"assets/assets/images/bd40897933.jpg": "77bcfb571b31bb7db8338265920e2db8",
"assets/assets/images/c17d3e25be.jpg": "2c7edf7aafeee7f7a65e42a82e3aa42b",
"assets/assets/images/c6aa77e369.jpg": "e6ed08abef6a42aabe2fe640355efe03",
"assets/assets/images/ca2902b1dc.jpg": "32338183979d50fbe2e8d8a1e746ef5d",
"assets/assets/images/da6b548c95.jpg": "5454547e59ecfa5042bd80fba0386fd0",
"assets/assets/images/eca5fe249d.jpg": "4a14e257d095cec0baeb4e1397473c74",
"assets/assets/images/Ellipse_1.png": "7886d2fc70933285baab214a98b52168",
"assets/assets/images/Ellipse_12.png": "90b144ee5cfe692e2772330d3cae4fa6",
"assets/assets/images/Ellipse_2.png": "246363a1a7363c60f9615967e5d7da08",
"assets/assets/images/Ellipse_2_(1).png": "00cbdc860fdf05c7a530e6cf83caed19",
"assets/assets/images/Ellipse_7.png": "be3d82864e537119732d5701601c2d10",
"assets/assets/images/Ellipse_7_(1).png": "5ce9a3c640c24a22292e42f2373cdf98",
"assets/assets/images/Ellipse_7_(2).png": "53c0caad049dd8201a49fa05a5a5ddd7",
"assets/assets/images/Ellipse_8.png": "4b43625afc9cc149338732b3ed5fb43f",
"assets/assets/images/Ellipse_8_(1).png": "420b51502946caabaaae9c07d2930579",
"assets/assets/images/Ellipse_9.png": "a5f34efd99c197a97b6ef26ca5591727",
"assets/assets/images/eoqem_j.jpg": "ab9e0aa53edccf3f597279e31f081d7b",
"assets/assets/images/Everest_North_Face_toward_Base_Camp_Tibet_Luca_Galuzzi_2006.jpg": "681a6a7b697f9d330b6f4fb4eb8f24d6",
"assets/assets/images/Facebook_(1).png": "ec87c5ac1ae9a73e98e5a1e5beeb67bc",
"assets/assets/images/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/images/ffkdffk@1.5x_1.png": "b092a8275d5acdc23ea7d0fdb50847ff",
"assets/assets/images/ffkdffk@1.5x_1_(1).png": "ecf6e0ccb666770cf88bff368207d9be",
"assets/assets/images/Frame_(16).png": "5e8bf480bfed0a6fe6cd40f6beb102bb",
"assets/assets/images/go.jpg": "c17bdaea3152edd0a1b61b726d91a1ba",
"assets/assets/images/gondogoro_la_2.jpg": "df2d957a2c0f0555ce0f96e51554e915",
"assets/assets/images/image%25201.png": "d0298461c3f7db2d0abd26c210bcea51",
"assets/assets/images/image%25202.png": "351b53410f8dc34c720657b630e8c3a0",
"assets/assets/images/image%25203.png": "eb33967dac0adf6abca0121ac7fc5b78",
"assets/assets/images/image%25204.png": "512e37fdc613e0d7edee437eca7f7f09",
"assets/assets/images/IMG_3861_1.png": "9e59b61053e35a3cba81d36673f00e8a",
"assets/assets/images/IMG_3861_1_(1).png": "9e59b61053e35a3cba81d36673f00e8a",
"assets/assets/images/Instagram_(1).png": "52278776083ff1b5aed41a627a770be7",
"assets/assets/images/k2.jpg": "343bcaac882f7c0d11e9956366d68e01",
"assets/assets/images/kh.jpg": "a9f71e306fd233c92a02df272e44e063",
"assets/assets/images/LinkedIn_(1).png": "f5853a73148ba9a5ad05251969dc4623",
"assets/assets/images/mash.jpg": "35ae19354d6bc952155c4b081457bc73",
"assets/assets/images/Monotone_arrow_right_sm_(5).png": "e5d95e1349737539c2fd50381ec79b18",
"assets/assets/images/Monotone_email_(1).png": "98a6ffd5bd297acca9dcc75f8e90a237",
"assets/assets/images/Monotone_email_(2).png": "a74970f42553d5a1c246642cc7c2a28c",
"assets/assets/images/Pattern-fill-a570d301251a6610e81744616b63c6f4.png": "f3ab39e9cd2463de3872ab2cfba928f8",
"assets/assets/images/Pattern-fill-bacba1566bf119c9f1e43ea7a9ac21ba.png": "17de8c2a3d5d18d3c20e67a5c500a7bc",
"assets/assets/images/Pattern-fill-d73fcbd3debb41d33d4efa9c9bfa686a.png": "ea0dca57acc311d78395869fc3085f31",
"assets/assets/images/Rectangle_112_(4).png": "8525d3bcc53c66b813aadc45e9f3da07",
"assets/assets/images/Rectangle_11688.png": "dc54e37cfade1cce20f34eb92def662a",
"assets/assets/images/Rectangle_11690.png": "8476549f0a806712e329baaada2add7a",
"assets/assets/images/Rectangle_133.png": "59e6a7277d009342950907b98486a7d1",
"assets/assets/images/Rectangle_138.png": "abe9ad4b5497f9e292c91912f52f508f",
"assets/assets/images/Rectangle_138_(1).png": "abe9ad4b5497f9e292c91912f52f508f",
"assets/assets/images/Rectangle_81.png": "e4e925d1f95042f36b5849225bee00df",
"assets/assets/images/Rectangle_81_(1).png": "f718aff3a29fdc8bb5c7fcf192229b15",
"assets/assets/images/Rectangle_89_(1).png": "c807845ebd3c80e58a2880ec728b3847",
"assets/assets/images/Rectangle_91_(2).png": "2112c9279d4cf95ef05de8becf9c65d0",
"assets/assets/images/redr.jpg": "3f3571132714850e8f1ef2d8e2d3ef2e",
"assets/assets/images/reduced.jpg": "a1dc3752bf5a828e564ff53f32694073",
"assets/assets/images/reduced_1.jpg": "a25d3d31e1d211785732929f98b60f05",
"assets/assets/images/rr.jpg": "0182ea69f70958e7d651e9b636df4285",
"assets/assets/images/rrr.jpg": "908724c0419eb8719f0f904b96fbcb2d",
"assets/assets/images/rrrrrr.jpg": "73696053718a7a7ef4d7e72fdc91b7ba",
"assets/assets/images/rrrrrrrr.jpg": "c98fb9222aeed4d4ef1448ed69440d19",
"assets/assets/images/Shandur.jpg": "6c16edaf77193360210541dd749763c1",
"assets/assets/images/Snowlake1.jpg": "e641b2365d86d38aef28e74a64848044",
"assets/assets/images/snowlake4.jpg": "4623be67834d27422edda4efff9d0a00",
"assets/assets/images/snowlake_3.jpg": "31c9267cf3a7f659861247b78a4ae834",
"assets/assets/images/Snow_Lake_under_twilight.jpg": "d06bd880c610678a8f96aad0f6113c29",
"assets/assets/images/Subtract.png": "a002abc6c4b606583f3e7941cfd86e08",
"assets/assets/images/Twitter_(1).png": "ca486b9bad7b1d101a757e46a823e7be",
"assets/assets/images/Vector_(18).png": "4cb665ba2392d28c725bac9aeddfe097",
"assets/assets/images/Vector_8.png": "bbd1f52a66d25431b346328ae5ee9b30",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "9b272888012b022cdad50ccb551a2b3c",
"assets/NOTICES": "ee8fa72f7c8500fe636e93b17e26d47e",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"favicon.ico": "a46fbfb88f612d7a7572c870be23744f",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "710391a13d120d445611653b7d1e269e",
"icons/apple-touch-icon.png": "a8bc1496e36cd34a1139c3349ee407fd",
"icons/Icon-192.png": "d70d17d1ed50da3f84ab7062853a3f9a",
"icons/Icon-512.png": "1bcf97d0c16b75e25e2b65e4b31a8103",
"index.html": "e8a814fc5e142443afeae8121bdfc4e8",
"/": "e8a814fc5e142443afeae8121bdfc4e8",
"main.dart.js": "4d1f4e2b718e79f3765961d1f3e07d1a",
"manifest.json": "88dd72c1347311f8eee0cf0c9bda1b53",
"version.json": "34a80b1f8d2640cf277e5fdac5681d4a"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
