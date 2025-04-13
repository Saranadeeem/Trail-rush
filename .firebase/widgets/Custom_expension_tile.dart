// import 'package:trail/utils/library.dart';
//
// class CustomExpandableTile extends StatefulWidget {
//   final String title;
//   final Widget child;
//   final bool isExpanded;
//
//   const CustomExpandableTile({
//     super.key,
//     required this.title,
//     required this.child, required this.isExpanded,
//   });
//
//   @override
//   State<CustomExpandableTile> createState() => _CustomExpandableTileState();
// }
//
// class _CustomExpandableTileState extends State<CustomExpandableTile> {
//   bool _isExpanded = false; // Track expanded/collapsed state
//
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         bool isWideScreen = constraints.maxWidth > 1000;
//         double screenWidth = constraints.maxWidth;
//
//         bool isWeb = screenWidth > 1000;
//
//         return Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             CustomContainer(
//               height: 10,
//               width: double.infinity,
//               border: Border.all(),
//               borderRadius: const BorderRadius.only(
//                 topLeft: Radius.circular(10),
//                 topRight: Radius.circular(10),
//               ),
//             ),
//             // Header (title row)
//             InkWell(
//               onTap: () {
//                 setState(() {
//                   _isExpanded = !_isExpanded; // Toggle state
//                 });
//               },
//               child: Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Expanded(
//                       child: Text(
//                         widget.title,
//                         style: TextStyle(
//                           fontSize: isWeb?30:18,
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold
//                         ),
//                       ),
//                     ),
//                     Icon(
//                       _isExpanded
//                           ? Icons.keyboard_arrow_up // Collapse icon
//                           : Icons.keyboard_arrow_down, // Expand icon
//                       color: Colors.black,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             // Expandable Content
//             AnimatedContainer(
//               duration: const Duration(milliseconds: 300), // Animation duration
//               curve: Curves.easeInOut,
//               height: _isExpanded ? null : 0, // Animate height
//               child: Visibility(
//                 visible: widget.isExpanded,
//                 child: widget.child,
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }

import 'package:trail/utils/library.dart';

class CustomExpandableTile extends StatelessWidget {
  final String title;
  final Widget child;
  final bool isExpanded; // External expanded state
  final VoidCallback onTileTapped; // External toggle function

  const CustomExpandableTile({
    super.key,
    required this.title,
    required this.child,
    required this.isExpanded,
    required this.onTileTapped,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CustomContainer(
          height: 10,
          width: double.infinity,
          border: Border.all(),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        // Header (title row)
        InkWell(
          onTap: onTileTapped, // Toggle via external callback
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: isDesktop?30:18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Icon(
                  isExpanded
                      ? Icons.keyboard_arrow_up // Collapse icon
                      : Icons.keyboard_arrow_down, // Expand icon
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
        // Expandable Content
        AnimatedContainer(
          duration: const Duration(milliseconds: 300), // Animation duration
          curve: Curves.easeInOut,
          height: isExpanded ? null : 0, // Animate height
          child: Visibility(
            visible: isExpanded,
            child: child,
          ),
        ),
      ],
    );
  }
}