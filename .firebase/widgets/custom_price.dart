import 'package:flutter/material.dart';

class CustomPrice extends StatelessWidget {
  final bool isWeb;
  const CustomPrice({super.key, required this.isWeb});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> features = [
      {'title': 'Trail Recording', 'free': true, 'premium': true},
      {'title': 'GPX Import/Export', 'free': true, 'premium': true},
      {'title': 'Trail Navigation', 'free': true, 'premium': true},
      {'title': '100+ Guides/Tour Operators', 'free': false, 'premium': true},
      {'title': 'Offline Maps', 'free': false, 'premium': true},
      {'title': 'Region Map Packs', 'free': false, 'premium': true},
      {'title': 'Safety Alerts', 'free': false, 'premium': true},
    ];

    return isWeb
        ? Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Image Section
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.asset(
            'assets/images/ffkdffk@1.5x_1.png', // Replace with your image path
            height: 400,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(width: 16),
        // Feature Table
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeaderRow(),
              const Divider(color: Colors.black),
              ...features.map((feature) => _buildFeatureRow(feature)),
            ],
          ),
        ),
      ],
    )
        : Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Image Section
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.asset(
            'assets/images/ffkdffk@1.5x_1.png', // Replace with your image path
            height: 400,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 16),
        // Feature Table
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeaderRow(),
              const Divider(color: Colors.black),
              ...features.map((feature) => _buildFeatureRow(feature)),
            ],
          ),
        ),
      ],
    );
  }

  // Builds the header row
  Widget _buildHeaderRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              "Features",
              style: TextStyle(fontSize: isWeb?33.46:20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                "Free",
                style: TextStyle(fontSize:  isWeb?33.46:20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                "Premium",
                style: TextStyle(fontSize: isWeb?33.46:20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Builds each feature row
  Widget _buildFeatureRow(Map<String, dynamic> feature) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: Text(
                feature['title'],
                style:  TextStyle(fontSize: isWeb?20:16, fontWeight: FontWeight.w500),
              ),
            ),
            Expanded(
              child: Center(
                child: feature['free']
                    ?  Icon(Icons.check, color: Colors.red,size: isWeb?20:20)
                    : const SizedBox(),
              ),
            ),
            Expanded(
              child: Center(
                child: feature['premium']
                    ? Icon(Icons.check, color: Colors.red,size: isWeb?20:20)
                    : const SizedBox(),
              ),
            ),
          ],
        ),
        const Divider(color: Colors.grey, height: 20, thickness: 1),
      ],
    );
  }
}
