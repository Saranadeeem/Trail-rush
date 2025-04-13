import 'package:trail/utils/library.dart';

class CustomChatBubble extends StatelessWidget {
  final String imagePath;
  final String message;
  final bool isDesktop;

  const CustomChatBubble({
    super.key,
    required this.imagePath,
    required this.message, required this.isDesktop,
  });

  @override
  Widget build(BuildContext context) {
    return isDesktop?Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Profile Image
        CircleAvatar(
          radius: 28,
          backgroundImage: AssetImage(imagePath),
        ),
        const SizedBox(width: 10),
        // Message Bubble
        Container(
          padding: const EdgeInsets.all(12),
          width: 220,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Text(
            message,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black87,
              height: 1.4,
            ),
          ),
        ),
      ],
    ):Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Profile Image
        CircleAvatar(
          radius: 28,
          backgroundImage: AssetImage(imagePath),
        ),
        const SizedBox(width: 10),
        // Message Bubble
        Flexible(
          child: Container(
            padding: const EdgeInsets.all(12),
            width: 220,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Text(
              message,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black87,
                height: 1.4,
              ),
            ),
          ),
        ),
      ],
    );
  }
}