import 'package:flutter/material.dart';
import 'package:page_not_found/page_not_found.dart';

/// Importing the custom package for error animations.

void main() {
  runApp(const Example());
}

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      /// Disables the debug banner in the app.
      home: Scaffold(
        body: FutureBuilder<Widget>(
          /// Fetches the animated error widget using the `animatedError10` method from the `PageNotFound` package.
          future: PageNotFound.animatedError10(context: context),
          builder: (context, snapshot) {
            /// While the future is still loading, display a loading spinner.
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            /// If an error occurs while fetching the widget, display the error message.
            else if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            }

            /// If the future successfully fetches data, display the widget returned.
            else if (snapshot.hasData) {
              return snapshot.data!;
            }
            else {
              return const Center(
                child: Text('Something went wrong.'),
                /// Displays a fallback message.
              );
            }
          },
        ),
      ),
    );
  }
}
