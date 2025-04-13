import 'package:trail/utils/library.dart';

class GojalUpperHunza2Fetch extends StatelessWidget {
  final bool isDesktop;
  const GojalUpperHunza2Fetch({super.key, required this.isDesktop});

  @override
  Widget build(BuildContext context) {
    // Stream to fetch the Baltistan list
    final Stream<QuerySnapshot<ListOfTracksModel>> fetchBaltistanList1 =
    ListOfTracksModel.collection()
        .where('location', isEqualTo: "GOJAL-UPPER HUNZA2") // Corrected field value
        .snapshots();
    return StreamBuilder<QuerySnapshot<ListOfTracksModel>>(
      stream: fetchBaltistanList1,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }
        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return const Center(child: Text('No tracks found'));
        }

        // Accessing the data correctly
        final trackList = snapshot.data!.docs.first.data().nameoftrack;

        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: trackList?.length ?? 0,
          itemBuilder: (context, index) {
            final trackName = trackList![index]; // Selected track name
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: InkWell(
                  onTap: () async {
                    // Query the matching document in 'Detailtracks'
                    QuerySnapshot<DetailTracksModel> querySnapshot = await DetailTracksModel.collection()
                        .where('filtername', isEqualTo: trackName)
                        .get();

                    if (querySnapshot.docs.isNotEmpty) {
                      final detailData = querySnapshot.docs.first.data();

                      // Navigate to DetailScreen with the fetched data
                      Get.to(() => DetailScreen(detailData: detailData));
                    } else {
                      Get.snackbar('Error', 'No details found for $trackName');
                    }
                  },
                  child: CustomText(text: trackList[index],overflow: TextOverflow.ellipsis,maxLines: 1,fontSize: isDesktop?19:14,)),
            );
          },
        );
      },
    );
  }
}