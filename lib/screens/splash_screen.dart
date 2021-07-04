// import 'package:flutter/material.dart';
//
// class GuidePage extends StatelessWidget {
//   static const String PATH = "/guide_page";
//   final introKey = GlobalKey<IntroductionScreenState>();
//   final VoidCallback onIntroEnd;
//
//   GuidePage(this.onIntroEnd);
//
//   Widget _buildImage(String assetName) {
//     return Align(
//       child: Image.asset('assets/images/$assetName.jpg', width: 350.0),
//       alignment: Alignment.bottomCenter,
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     const bodyStyle = TextStyle(fontSize: 14.0);
//     const pageDecoration = const PageDecoration(
//       titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700),
//       bodyTextStyle: bodyStyle,
//       descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
//       pageColor: Colors.white,
//       imagePadding: EdgeInsets.zero,
//     );
//
//     return IntroductionScreen(
//       key: introKey,
//       pages: [
//         PageViewModel(
//           title: 'Cancer Registry System for Bangladesh',
//           body: "Geographic and demographic cancer statistics will make it possible for monitoring, evaluating and improving rates.",
//           image: _buildImage('intro1'),
//           decoration: pageDecoration,
//         ),
//         PageViewModel(
//           title: 'Staging by TNM.',
//           body: "It helps determine the best treatment options.",
//           image: _buildImage('intro2'),
//           decoration: pageDecoration,
//         ),
//         PageViewModel(
//           title: 'Special prescription module for oncologist and cancer patients',
//           body: "It is easy to access and save your time.",
//           image: _buildImage('intro3'),
//           decoration: pageDecoration,
//         ),
//       ],
//       onDone: onIntroEnd ?? () => {AppProvider.getRouter(context).pop(context)},
//       onSkip: onIntroEnd ?? () => {AppProvider.getRouter(context).pop(context)},
//       // You can override onSkip callback
//       showSkipButton: true,
//       skipFlex: 0,
//       nextFlex: 0,
//       skip: Text('Skip'),
//       next: const Icon(Icons.arrow_forward),
//       done: Text('Done',
//           style: TextStyle(fontWeight: FontWeight.w600)),
//       dotsDecorator: const DotsDecorator(
//         size: Size(10.0, 10.0),
//         color: Color(0xFFBDBDBD),
//         activeSize: Size(22.0, 10.0),
//         activeShape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(25.0)),
//         ),
//       ),
//     );
//   }
// }
