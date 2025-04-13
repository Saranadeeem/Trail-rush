import 'package:flutter/material.dart';

import 'custom_responses.dart';
import 'custom_url.dart';

class CustomFooter extends StatelessWidget {
  final String companyName;
  final String companyDescription;
  final List<String> aboutItems;
  final List<String> resourceItems;
  final String footerNote;
  final VoidCallback onSubscribe;

  const CustomFooter({
    super.key,
    this.companyName = "Trail Rush",
    this.companyDescription =
        "Pakistan’s premier platform for exploring hidden trails and breathtaking hikes.",
    this.aboutItems = const ["Companies", "Pricing", "Terms", "Advice", "Privacy Policy"],
    this.resourceItems = const ["Help Docs", "Guide", "Updates", "Contact Us"],
    this.footerNote = "2024 @ Trail Rush. All rights reserved.",
    required this.onSubscribe,
  });

  @override
  Widget build(BuildContext context) {
    final bool isLittleMobile = Responsive.isLittleMobile(context);
    final bool isMobile = Responsive.isMobile(context);
    final bool isTablet = Responsive.isTablet(context);
    final bool isDesktop = Responsive.isDesktop(context);

    return Container(
      width: double.infinity,
      color: const Color(0xFF1F5C5A),
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          isMobile ? _buildMobileLayout() : _buildWebLayout(isDesktop,isMobile,isTablet),
          const SizedBox(height: 20),
          const Divider(color: Colors.white),
          const SizedBox(height: 15),
          _buildFooterBottom(isMobile,isTablet,isDesktop,isLittleMobile),
        ],
      ),
    );
  }

  Widget _buildWebLayout(bool isDesktop, bool isMobile, bool isTablet) {
    if (isDesktop) {
      // Desktop layout: Row with larger padding
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 60),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(flex: 1, child: const SizedBox.shrink()), // Spacer for symmetry
            Flexible(flex: 1, child: _buildTextSection(companyName, companyDescription)),
            Flexible(flex: 1, child: _buildListSection("About", aboutItems)),
            Flexible(flex: 1, child: _buildListSection("Resources", resourceItems)),
            Flexible(flex: 2, child: _buildSubscriptionSection()),
          ],
        ),
      );
    } else if (isTablet) {
      // Tablet layout: Column with moderate padding
      return _buildMobileLayout();
    } else if (isMobile) {
      // Mobile layout: Stacked vertically with minimal padding
      return _buildMobileLayout();
    } else {
      // Fallback to mobile layout in case of an issue
      return _buildMobileLayout();
    }
  }


  Widget _buildMobileLayout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTextSection(companyName, companyDescription),
        const SizedBox(height: 16),
        const Divider(color: Colors.white),
        const SizedBox(height: 16),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: _buildListSection("About", aboutItems)),
            Expanded(child: _buildListSection("Resources", resourceItems)),
          ],
        ),
        const SizedBox(height: 16),
        const SizedBox(height: 16),
        const Divider(color: Colors.white),
        const SizedBox(height: 16),
        _buildSubscriptionSection(),
      ],
    );
  }

  Widget _buildTextSection(String title, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          description,
          style: const TextStyle(color: Colors.white70, fontSize: 16),
        ),
      ],
    );
  }

  Widget _buildListSection(String title, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        const SizedBox(height: 8),
        ...items.map((item) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Text(item, style: const TextStyle(color: Colors.white70, fontSize: 16)),
            )),
      ],
    );
  }

  Widget _buildSubscriptionSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Get Updates",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        const SizedBox(height: 8),
        const Text(
          "The latest news and articles sent to your\ninbox weekly.",
          style: TextStyle(color: Colors.white70, fontSize: 16),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter your email",
                  hintStyle: const TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                ),
              ),
            ),
            const SizedBox(width: 8),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Matches the button background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // Adds rounded corners
                ),
                elevation: 5, // Adds a shadow for a "floating" effect
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16), // Controls button size
              ),
              onPressed: onSubscribe,
              child: const Text(
                "Subscribe",
                style: TextStyle(
                  color: Colors.white, // Makes text white
                  fontSize: 18, // Matches larger, readable font size
                  fontWeight: FontWeight.w600, // Semi-bold for better emphasis
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildFooterBottom(bool isMobile, bool isTablet, bool isDesktop , isLittleMobile) {
    if (isMobile || isTablet || isLittleMobile) {
      // Mobile and tablet layout (stacked vertically)
      return Column(
        children: [
          Text(
            footerNote,
            style: const TextStyle(color: Colors.white, fontSize: 16),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 16,
            children: _buildSocialIcons(),
          ),
        ],
      );
    } else if (isDesktop) {
      // Desktop layout (horizontal layout with spacing)
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(flex: 1, child: const SizedBox.shrink()), // Spacer for symmetry
          Text(
            footerNote,
            style: const TextStyle(color: Colors.white, fontSize: 16),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 16,
            children: _buildSocialIcons(),
          ),
          Flexible(flex: 1, child: const SizedBox.shrink()), // Spacer for symmetry
        ],
      );
    }
    return const SizedBox.shrink(); // Fallback if no condition matches (safety)
  }


  List<Widget> _buildSocialIcons() {
    return [
      IconButton(
        onPressed: () => CustomUrl.openUrl("https://www.facebook.com/people/Trail-Rush/61560304075779/?name=xhp_nt_"),
        icon: Image.asset('assets/images/Facebook_(1).png'),
        iconSize: 24,
      ),
      IconButton(
        onPressed: () => CustomUrl.openUrl("https://www.instagram.com/thetrailrush/"),
        icon: Image.asset('assets/images/Instagram_(1).png'),
        iconSize: 24,
      ),
      IconButton(
        onPressed: () => CustomUrl.openUrl("https://www.linkedin.com/company/trail-rush?trk=fullfeedcard_main-feed-card_feed-actor-name"),
        icon: Image.asset('assets/images/LinkedIn_(1).png'),
        iconSize: 24,
      ),
    ];
  }
}
