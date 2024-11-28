// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
//
// class VideoBackgroundWidget extends StatefulWidget {
//   final String videoUrl; // URL of the video or local asset path
//
//   const VideoBackgroundWidget({
//     super.key,
//     required this.videoUrl,
//   });
//
//   @override
//   _VideoBackgroundWidgetState createState() => _VideoBackgroundWidgetState();
// }
//
// class _VideoBackgroundWidgetState extends State<VideoBackgroundWidget> {
//   late VideoPlayerController _controller;
//
//   @override
//   void initState() {
//     super.initState();
//     // Initialize the video controller with the provided URL or asset
//     _controller = VideoPlayerController.network(widget.videoUrl)
//       ..initialize().then((_) {
//         setState(() {});
//         _controller.play();
//         _controller.setLooping(true); // Loop the video
//       });
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose(); // Dispose the controller when not in use
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         // Video Player as Background
//         _controller.value.isInitialized
//             ? Positioned.fill(
//           child: FittedBox(
//             fit: BoxFit.cover,
//             child: SizedBox(
//               width: _controller.value.size.width,
//               height: _controller.value.size.height,
//               child: VideoPlayer(_controller),
//             ),
//           ),
//         )
//             : const Center(child: CircularProgressIndicator()),
//
//         // You can add content here that will be placed on top of the video background
//         Center(
//           child: Container(
//             color: Colors.black.withOpacity(0.5),
//             child: const Text(
//               'Your Content Here',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
