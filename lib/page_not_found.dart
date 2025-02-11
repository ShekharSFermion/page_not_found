/// Importing necessary libraries and packages
library page_not_found;

/// Defining the library name

import 'dart:io';

/// Provides support for platform-specific checks
import 'package:flutter/foundation.dart';

/// For platform-specific constants
import 'package:flutter/material.dart';

/// Provides Flutter UI components
import 'package:lottie/lottie.dart';

/// For Lottie animations
import 'package:http/http.dart' as http;

/// For making HTTP requests

/// Class to handle error pages and animations
class PageNotFound {
  ///Creates a widget to display a generic error page with an image, text, and platform-specific behavior.
  /// This version pre-caches the image for smoother user experience.

  static Future<Widget> errorTemplate1({
    required BuildContext context,
  }) async {
    const image =
        NetworkImage('https://shekharsfermion.github.io/img_curly.png');

    /// Error image URL
    await precacheImage(image, context);

    /// Pre-cache the image to avoid flickering
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (kIsWeb)

            /// Checks if running on the web
            Column(
              children: [
                ..._designTemplate(
                  context,
                  MediaQuery.of(context).size.width * 0.7,
                  MediaQuery.of(context).size.height * 0.5,
                  'https://shekharsfermion.github.io/img_curly.png',
                  'The page slipped out of our brackets',
                  'SOMETHING WENT WRONG',
                  '',
                  Colors.black,
                  Colors.green,
                  Colors.transparent,
                ),
              ],
            )
          else if (Platform.isAndroid)

            /// Checks if running on Android
            ..._designTemplate(
              context,
              MediaQuery.of(context).size.width * 0.7,
              MediaQuery.of(context).size.height * 0.5,
              'https://shekharsfermion.github.io/img_curly.png',
              'The page slipped out of our brackets',
              'SOMETHING WENT WRONG',
              '',
              Colors.black,
              Colors.green,
              Colors.transparent,
            )
          else if (Platform.isWindows)

            /// Placeholder for Windows-specific behavior
            ...[],
        ],
      ),
    );
  }

  static Future<Widget> errorTemplate2({
    required BuildContext context,
  }) async {
    const image =
        NetworkImage('https://shekharsfermion.github.io/img_error2.png');
    await precacheImage(image, context);

    return templateSample(
        context,
        Color(0xFFE1E5E6),
        MediaQuery.of(context).size.width * 0.7,
        MediaQuery.of(context).size.height * 0.5,
        'https://shekharsfermion.github.io/img_error2.png',
        'Great shot kid. That was one in a million.',
        'Achievement Unlocked: You found... nothing. Try a different path!',
        '',
        Color(0xFFF57F17),
        Color(0xFF2E819A),
        Colors.black);
  }

  static Future<Widget> errorTemplate3({
    required BuildContext context,
  }) async {
    const image =
        NetworkImage('https://shekharsfermion.github.io/img_error3.png');
    await precacheImage(image, context);
    return templateSample(
        context,
        Colors.white,
        MediaQuery.of(context).size.width,
        MediaQuery.of(context).size.height * 0.7,
        'https://shekharsfermion.github.io/img_error3.png',
        'The Medu Vada rolled off the plate! ',
        'Shall we find it?',
        '',
        Colors.black,
        Colors.yellow,
        Colors.transparent);
  }

  static Future<Widget> errorTemplate4({
    required BuildContext context,
  }) async {
    const image =
        NetworkImage('https://shekharsfermion.github.io/img_error4.png');
    await precacheImage(image, context);
    return templateSample(
        context,
        Colors.black,
        MediaQuery.of(context).size.width * 0.7,
        MediaQuery.of(context).size.height * 0.5,
        'https://shekharsfermion.github.io/img_error4.png',
        'This page is incomplete—',
        'some pixels are missing. ',
        '',
        Colors.white,
        Colors.white,
        Colors.transparent);
  }

  static Future<Widget> errorTemplate5({
    required BuildContext context,
  }) async {
    const image =
        NetworkImage('https://shekharsfermion.github.io/img_error5.png');
    await precacheImage(image, context);
    return templateSample(
        context,
        Colors.white,
        MediaQuery.of(context).size.width * 0.7,
        MediaQuery.of(context).size.height * 0.5,
        'https://shekharsfermion.github.io/img_error5.png',
        'Whoops... Looks like we lost an egg along the way.',
        '',
        '',
        Colors.black,
        Colors.green,
        Colors.transparent);
  }

  static Future<Widget> errorTemplate6({
    required BuildContext context,
  }) async {
    const image =
        NetworkImage('https://shekharsfermion.github.io/img_error6.png');
    await precacheImage(image, context);
    return templateSample(
        context,
        Colors.white,
        MediaQuery.of(context).size.width * 0.7,
        MediaQuery.of(context).size.height * 0.5,
        'https://shekharsfermion.github.io/img_error6.png',
        'Our construction crew accidentally knocked this page down.',
        'This page is still in construction.',
        '',
        Colors.black,
        Colors.green,
        Colors.transparent);
  }

  static Future<Widget> errorTemplate7({
    required BuildContext context,
  }) async {
    const image =
        NetworkImage('https://shekharsfermion.github.io/img_error7.png');
    await precacheImage(image, context);
    return templateSample(
        context,
        const Color(0xFFFCB82F),
        MediaQuery.of(context).size.width * 0.7,
        MediaQuery.of(context).size.height * 0.5,
        'https://shekharsfermion.github.io/img_error7.png',
        'Oops! 404',
        'Our cat spilled milk on this page. Let’s lick it clean and try again.',
        '',
        Colors.white,
        Colors.white,
        Colors.transparent);
  }

  static Future<Widget> errorTemplate8({
    required BuildContext context,
  }) async {
    const image =
        NetworkImage('https://shekharsfermion.github.io/img_error8.png');
    await precacheImage(image, context);
    return templateSample(
        context,
        Colors.white,
        MediaQuery.of(context).size.width * 0.7,
        MediaQuery.of(context).size.height * 0.5,
        'https://shekharsfermion.github.io/img_error8.png',
        'What happened to the Cupcake?',
        'The thing is simple: or we have an undesired guest in our kitchen,',
        'or something went wrong with the website.',
        Color(0xFFB9832C),
        Color(0xFF0277BD),
        Color(0xFF0277BD));
  }

  static Future<Widget> errorTemplate9({
    required BuildContext context,
  }) async {
    const image =
        NetworkImage('https://shekharsfermion.github.io/img_error9.png');
    await precacheImage(image, context);
    return templateSample(
        context,
        Color(0xFFEB8A5E),
        MediaQuery.of(context).size.width * 0.7,
        MediaQuery.of(context).size.height * 0.5,
        'https://shekharsfermion.github.io/img_error9.png',
        '404: A mischievous cat deleted this page.',
        ' Time for a digital timeout!',
        '',
        Color(0xFF785D4C),
        Colors.white,
        Color(0xFFE7DC68));
  }

  static Future<Widget> errorTemplate10({
    required BuildContext context,
  }) async {
    const image =
        NetworkImage('https://shekharsfermion.github.io/img_error10.png');
    await precacheImage(image, context);
    return templateSample(
        context,
        Color(0xFFEEDCCE),
        MediaQuery.of(context).size.width * 0.7,
        MediaQuery.of(context).size.height * 0.5,
        'https://shekharsfermion.github.io/img_error10.png',
        'Looks like someone got too excited opening this box...',
        'and now the page is gone!.',
        '',
        Color(0xFF785D4C),
        Color(0xFF785D4C),
        Color(0xFFE7DC68));
  }

  /// Creates a template for displaying a specific error with a customizable background, text, and image.
  static Container templateSample(
    BuildContext context,
    Color containerColor,
    double image1Width,
    double image1Height,
    String image1,
    String text1,
    String text2,
    String text3,
    Color text1Color,
    Color text2Color,
    Color text3Color,
  ) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: containerColor,

      /// Sets the background color of the container
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (kIsWeb)

            /// Web-specific error design
            ..._designTemplate(context, image1Width, image1Height, image1,
                text1, text2, text3, text1Color, text2Color, text3Color)
          else if (Platform.isAndroid)

            /// Android-specific error design
            ..._designTemplate(context, image1Width, image1Height, image1,
                text1, text2, text3, text1Color, text2Color, text3Color)
          else if (Platform.isWindows)

            /// Placeholder for Windows-specific design
            ...[],
        ],
      ),
    );
  }

  /// Helper function to define the design template for error messages.

  static List<Widget> _designTemplate(
    BuildContext context,
    double image1Width,
    double image1Height,
    String image1,
    String text1,
    String text2,
    String text3,
    Color text1Color,
    Color text2Color,
    Color text3Color,
  ) {
    return [
      Image.network(image1),

      /// Displays the error image
      const SizedBox(height: 10),

      /// Adds spacing
      Text(
        text1,
        style: TextStyle(
          fontSize: 18,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
          color: text1Color,
        ),
      ),
      const SizedBox(height: 10),
      if (text2.isNotEmpty)
        Text(
          text2,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
            color: text2Color,
          ),
        ),
      if (text3.isNotEmpty)
        Text(
          text3,
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
            color: text3Color,
          ),
        ),
    ];
  }

  /// Pre-caches a Lottie animation to ensure smoother playback.

  static Future<LottieComposition> precacheLottieAnimation(String url) async {
    try {
      final response = await http.get(Uri.parse(url));

      /// Fetch Lottie JSON from the URL
      if (response.statusCode == 200) {
        return await LottieComposition.fromBytes(response.bodyBytes);

        /// Parse the Lottie animation
      } else {
        throw Exception('Failed to load Lottie file: ${response.statusCode}');
      }
    } catch (e) {
      /// Logs any errors encountered
      rethrow;
    }
  }

  /// Creates a widget for displaying an animated error using Lottie animations.

  static Future<Widget> animatedError1({
    required BuildContext context,
    double? gifHeight,
    double? gifWidth,
  }) async {
    try {
      final composition = await precacheLottieAnimation(
          'https://shekharsfermion.github.io/animatederrorpage1.json');

      /// Lottie animation URL
      return Center(
        child: Lottie(
          composition: composition,
          width: gifWidth ?? MediaQuery.of(context).size.width * 0.8,
          height: gifHeight ?? MediaQuery.of(context).size.height * 0.7,
        ),
      );
    } catch (e) {
      return const Center(
        child: Text("Error loading animation"),

        /// Fallback text if animation fails
      );
    }
  }

  /// A method to display an animated error widget using a Lottie animation.
  /// It takes `context`, `gifHeight`, and `gifWidth` as parameters.
  /// `gifHeight` and `gifWidth` are optional and allow customization of the animation's size.

  static Future<Widget> animatedError2(
      {required BuildContext context,
      double? gifHeight,
      double? gifWidth}) async {
    try {
      /// Preloads the Lottie animation from the given URL to ensure it's cached before rendering.

      final composition = await precacheLottieAnimation(
          'https://shekharsfermion.github.io/animatederrorpage2.json');

      /// Displays the animation in the center of the screen.

      return Center(
        child: Lottie(
          composition: composition,
          width: gifWidth ?? MediaQuery.of(context).size.width * 0.8,
          height: gifHeight ?? MediaQuery.of(context).size.height * 0.7,
        ),
      );
    } catch (e) {
      /// If an error occurs while loading the animation, displays a fallback error message.
      return const Center(
        child: Text("Error loading animation"),
      );
    }
  }

  /// Similarly, other methods (`animatedError3` to `animatedError10`) follow the same pattern:
  /// - They load a specific Lottie animation from a URL.
  /// - Display the animation at the center of the screen.
  /// - Handle errors gracefully by displaying an error message if the animation fails to load.

  static Future<Widget> animatedError3(
      {required BuildContext context,
      double? gifHeight,
      double? gifWidth}) async {
    try {
      final composition = await precacheLottieAnimation(
          'https://shekharsfermion.github.io/animatederrorpage3.json');
      return Center(
        child: Lottie(
          composition: composition,
          width: gifWidth ?? MediaQuery.of(context).size.width * 0.8,
          height: gifHeight ?? MediaQuery.of(context).size.height * 0.7,
        ),
      );
    } catch (e) {
      return const Center(
        child: Text("Error loading animation"),
      );
    }
  }

  static Future<Widget> animatedError4(
      {required BuildContext context,
      double? gifHeight,
      double? gifWidth}) async {
    try {
      final composition = await precacheLottieAnimation(
          'https://shekharsfermion.github.io/animatederrorpage4.json');
      return Center(
        child: Lottie(
          composition: composition,
          width: gifWidth ?? MediaQuery.of(context).size.width * 0.8,
          height: gifHeight ?? MediaQuery.of(context).size.height * 0.7,
        ),
      );
    } catch (e) {
      return const Center(
        child: Text("Error loading animation"),
      );
    }
  }

  static Future<Widget> animatedError5(
      {required BuildContext context,
      double? gifHeight,
      double? gifWidth}) async {
    try {
      final composition = await precacheLottieAnimation(
          'https://shekharsfermion.github.io/animatederrorpage5.json');
      return Center(
        child: Lottie(
          composition: composition,
          width: gifWidth ?? MediaQuery.of(context).size.width * 0.8,
          height: gifHeight ?? MediaQuery.of(context).size.height * 0.7,
        ),
      );
    } catch (e) {
      return const Center(
        child: Text("Error loading animation"),
      );
    }
  }

  static Future<Widget> animatedError6(
      {required BuildContext context,
      double? gifHeight,
      double? gifWidth}) async {
    try {
      final composition = await precacheLottieAnimation(
          'https://shekharsfermion.github.io/animatederrorpage6.json');
      return Center(
        child: Lottie(
          composition: composition,
          width: gifWidth ?? MediaQuery.of(context).size.width * 0.8,
          height: gifHeight ?? MediaQuery.of(context).size.height * 0.7,
        ),
      );
    } catch (e) {
      return const Center(
        child: Text("Error loading animation"),
      );
    }
  }

  static Future<Widget> animatedError7(
      {required BuildContext context,
      double? gifHeight,
      double? gifWidth}) async {
    try {
      final composition = await precacheLottieAnimation(
          'https://shekharsfermion.github.io/animatederrorpage7.json');
      return Center(
        child: Lottie(
          composition: composition,
          width: gifWidth ?? MediaQuery.of(context).size.width * 0.8,
          height: gifHeight ?? MediaQuery.of(context).size.height * 0.7,
        ),
      );
    } catch (e) {
      return const Center(
        child: Text("Error loading animation"),
      );
    }
  }

  static Future<Widget> animatedError8(
      {required BuildContext context,
      double? gifHeight,
      double? gifWidth}) async {
    try {
      final composition = await precacheLottieAnimation(
          'https://shekharsfermion.github.io/animatederrorpage8.json');
      return Center(
        child: Lottie(
          composition: composition,
          width: gifWidth ?? MediaQuery.of(context).size.width * 0.8,
          height: gifHeight ?? MediaQuery.of(context).size.height * 0.7,
        ),
      );
    } catch (e) {
      return const Center(
        child: Text("Error loading animation"),
      );
    }
  }

  static Future<Widget> animatedError9(
      {required BuildContext context,
      double? gifHeight,
      double? gifWidth}) async {
    try {
      final composition = await precacheLottieAnimation(
          'https://shekharsfermion.github.io/animatederrorpage9.json');
      return Center(
        child: Lottie(
          composition: composition,
          width: gifWidth ?? MediaQuery.of(context).size.width * 0.8,
          height: gifHeight ?? MediaQuery.of(context).size.height * 0.7,
        ),
      );
    } catch (e) {
      return const Center(
        child: Text("Error loading animation"),
      );
    }
  }

  static Future<Widget> animatedError10(
      {required BuildContext context,
      double? gifHeight,
      double? gifWidth}) async {
    try {
      final composition = await precacheLottieAnimation(
          'https://shekharsfermion.github.io/animatederrorpage10.json');
      return Center(
        child: Lottie(
          composition: composition,
          width: gifWidth ?? MediaQuery.of(context).size.width * 0.8,
          height: gifHeight ?? MediaQuery.of(context).size.height * 0.7,
        ),
      );
    } catch (e) {
      return const Center(
        child: Text("Error loading animation"),
      );
    }
  }

/*
  static Future<Widget> animatedError11({required BuildContext context}) async {
    try {
      final composition = await precacheLottieAnimation();
      return Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.7,
              color: Colors.white,
              child: Lottie(
                composition: composition,
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.7,
              ),
            ),
          ],
        ),
      );
    } catch (e) {
      return const Center(
        child: Text("Error loading animation"),
      );
    }
  }
*/
/*
  static Widget animatedError11({required BuildContext context}) {
    return FutureBuilder<LottieComposition>(
        future: precacheLottieAnimation(),
    builder: (context, snapshot) {
          print("snapshot::::::::::::: $snapshot");
    if (snapshot.connectionState == ConnectionState.waiting) {
    return const Center(
    child: CircularProgressIndicator(),
    );
    } else if (snapshot.hasError) {
    return const Center(
    child: Text("Error loading animation"),
    );
    } else if (snapshot.hasData) {
    return Container(
    color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.7,
            color: Colors.white,
            child: Lottie(
              composition: snapshot.data!,
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.7,
            ),
          ),
        ],
      ),
    );
    } else {
      return const Center(
        child: Text("Unknown error occurred"),
      );
    }
    },
    );
  }
*/
/*
  static Widget animatedError10({required BuildContext context}){
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
            child: Lottie.network('https://shekharsfermion.github.io/animatederrorpage10.json'),
          ),
        ],
      ),
    );
  }
*/
}
