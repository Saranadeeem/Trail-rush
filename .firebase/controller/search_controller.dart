// import '../utils/library.dart';
//
// class DataController extends GetxController {
//   final searchController = TextEditingController();
//   final formKey = GlobalKey<FormState>();
//
//   // Observable variables
//   var isLoading = false.obs;
//   var allTracks = <String>[].obs; // Stores all track names from Firestore
//   var filteredTracks = <String>[].obs; // Stores filtered track names based on user input
//
//   @override
//   void onInit() {
//     super.onInit();
//     fetchTracks(); // Fetch all track names when the controller is initialized
//   }
//
//   // Fetch all track names from Firestore
//   Future<void> fetchTracks() async {
//     try {
//       DocumentSnapshot snapshot = await FirebaseFirestore.instance
//           .collection('SearchTrack')
//           .doc('2Arh7CdM22tGTXOZvIVs') // Replace with your document ID
//           .get();
//
//       if (snapshot.exists) {
//         List<dynamic> tracks = snapshot.get('name');
//         allTracks.value = tracks.cast<String>(); // Save all track names
//       }
//     } catch (e) {
//       Get.snackbar('Error', 'Failed to load tracks: $e');
//     }
//   }
//
//   // Filter tracks based on user input
//   void filterTracks(String query) {
//     if (query.isEmpty) {
//       filteredTracks.clear(); // Clear suggestions if the input is empty
//     } else {
//       filteredTracks.value = allTracks
//           .where((track) => track.toLowerCase().contains(query.toLowerCase()))
//           .toList();
//     }
//   }
//
//   // Search function with conditional navigation
//   Future<void> searchTrack() async {
//     String searchQuery = searchController.text.trim();
//
//     if (searchQuery.isEmpty) {
//       Get.snackbar('Error', 'Please enter a track name to search.');
//       return;
//     }
//
//     try {
//       isLoading.value = true;
//
//       // Check if the track exists in the list
//       if (allTracks.contains(searchQuery)) {
//         // Navigate to specific screens based on the track name
//         if (searchQuery == 'Babusar Pass') {
//           Get.to(() => BabusarPassScreen()); // Navigate to Babusar Pass Screen
//         } else if (searchQuery == 'Shandur Pass') {
//           Get.to(() => ShandurPassScreen()); // Navigate to Babusar Pass Screen
//         } else if (searchQuery == 'Gondogoro Pass') {
//           Get.to(() => GondoGoroScreen()); // Navigate to Babusar Pass Screen
//         } else if (searchQuery == 'Rakaposhi Base Camp') {
//           Get.to(() => BabusarPassScreen()); // Navigate to Babusar Pass Screen
//         } else {
//           // If no specific screen is defined, fetch details from Firestore
//           QuerySnapshot snapshot = await FirebaseFirestore.instance
//               .collection('Detailtracks') // Replace with your collection name
//               .where('name', isEqualTo: searchQuery)
//               .get();
//
//           if (snapshot.docs.isNotEmpty) {
//             // Convert the document to a DetailTracksModel
//             DetailTracksModel detailData = DetailTracksModel.fromJson(
//                 snapshot.docs.first.data() as Map<String, dynamic>);
//
//             // Navigate to the DetailScreen with the data
//             Get.to(() => DetailScreen(detailData: detailData));
//           } else {
//             Get.snackbar(
//                 'Not Found', 'Details for "$searchQuery" were not found.');
//           }
//         }
//         filteredTracks.clear(); // Clear suggestions if the input is empty
//       }
//       else {
//         Get.snackbar('Not Found', 'The track "$searchQuery" was not found.');
//       }
//     } catch (e) {
//       Get.snackbar('Error', 'An error occurred: $e');
//     } finally {
//       isLoading.value = false;
//     }
//   }
//
//   @override
//   void onClose() {
//     searchController.dispose();
//     super.onClose();
//   }
// }
import '../utils/library.dart';

class DataController extends GetxController {
  final searchController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  // Observable variables
  var isLoading = false.obs;
  var allTracks = <String>[].obs; // Stores all track names from Firestore
  var filteredTracks = <String>[].obs; // Stores filtered track names based on user input

  @override
  void onInit() {
    super.onInit();
    fetchTracks(); // Fetch all track names when the controller is initialized
  }

  // Fetch all track names from Firestore
  Future<void> fetchTracks() async {
    try {
      isLoading.value = true; // Start loading
      DocumentSnapshot snapshot = await FirebaseFirestore.instance
          .collection('SearchTrack')
          .doc('2Arh7CdM22tGTXOZvIVs') // Replace with your document ID
          .get();

      if (snapshot.exists) {
        List<dynamic> tracks = snapshot.get('name');
        allTracks.value = tracks.cast<String>(); // Save all track names
      } else {
        print("Document not found in Firestore.");
        Get.snackbar('Error', 'Tracks not found in the database.');
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to load tracks: $e');
    } finally {
      isLoading.value = false; // Stop loading
    }
  }

  // Filter tracks based on user input
  void filterTracks(String query) {
    if (query.isEmpty) {
      filteredTracks.clear(); // Clear suggestions if the input is empty
    } else {
      filteredTracks.value = allTracks
          .where((track) => track.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
  }

  // Perform search
  // Future<void> searchTrack() async {
  //   String searchQuery = searchController.text.trim();
  //
  //   if (searchQuery.isEmpty) {
  //     Get.snackbar('Error', 'Please enter a track name to search.');
  //     return;
  //   }
  //
  //   try {
  //     isLoading.value = true;
  //
  //     // Check if the track exists
  //     if (allTracks.contains(searchQuery)) {
  //       Get.snackbar('Success', 'Navigating to details for "$searchQuery".');
  //       // Navigate to a detailed screen for the track
  //       // Example: Replace with your specific navigation logic
  //     } else {
  //       Get.snackbar('Not Found', 'The track "$searchQuery" was not found.');
  //     }
  //   } catch (e) {
  //     Get.snackbar('Error', 'An error occurred: $e');
  //   } finally {
  //     isLoading.value = false;
  //   }
  // }
  Future<void> searchTrack() async {
    String searchQuery = searchController.text;

    if (searchQuery.isEmpty) {
      Get.snackbar('Error', 'Please enter a track name to search.');
      return;
    }

    try {
      isLoading.value = true;

      // Check if the track exists
      if (allTracks.contains(searchQuery)) {
        filteredTracks.clear();
        // Navigate to specific screens based on the track name
        if (searchQuery == 'Babusar Pass') {
          Get.to(() => const BabusarPassScreen()); // Navigate to Babusar Pass Screen
        } else if (searchQuery == 'Shandur Pass') {
          Get.to(() => const ShandurPassScreen()); // Navigate to Babusar Pass Screen
        }else if (searchQuery == 'Khunjerab Pass') {
          Get.to(() => const KhunjerabPassScreen()); // Navigate to Babusar Pass Screen
        }else if (searchQuery == 'K2 Basecamp Trek') {
          Get.to(() => const K2BasecampTrekScreen()); // Navigate to Babusar Pass Screen
        } else if (searchQuery == 'Gondogoro') {
          Get.to(() => const GondoGoroScreen()); // Navigate to Babusar Pass Screen
        } else if (searchQuery == 'Snow Lake Trek') {
          Get.to(() => const SnowLakeTrekScreen()); // Navigate to Babusar Pass Screen
        }
        else {
          QuerySnapshot<DetailTracksModel> snapshot = await DetailTracksModel.collection()
              .where('filtername', isEqualTo: searchQuery)
              .get();

          if (snapshot.docs.isNotEmpty) {
            // Navigate to the DetailScreen with the data
            Get.to(() => DetailScreen(detailData: snapshot.docs.first.data()));
            // Clear the suggestions after navigation
            filteredTracks.clear();
          } else {
            Get.snackbar('Not Found', 'Details for "$searchQuery" were not found.');
          }
        }
      }
      else {
        Get.snackbar('Not Found', 'The track "$searchQuery" was not found.');
      }
    } catch (e) {
      Get.snackbar('Error', 'An error occurred: $e');
    } finally {
      isLoading.value = false;
    }
  }


  @override
  void onClose() {
    searchController.dispose();
    super.onClose();
  }
}
