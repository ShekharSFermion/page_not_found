# page_not_found

## Getting Started
A Flutter package designed to display 404 error pages offers customizable widgets that integrate images and Lottie animations.
It allows developers to create visually appealing error pages for web and mobile applications, enhancing user experience.
Features typically include:
Image Support: 10 different images for 404 error page not found
Lottie Animations : 10 different Lottie animations.

## Installation

To use the `page_not_found` package, add the following line to your `pubspec.yaml` file under the `dependencies` section:

```yaml
dependencies:
  page_not_found: ^<latest_version>
```

## 404 Lottie Animations

<table>
  <tr>
    <td><img src="https://shekharsfermion.github.io/animation_error1_screen_rec.gif" alt="Animation 1" width="150"></td>
    <td><img src="https://shekharsfermion.github.io/animation_error2_screen_rec.gif" alt="Animation 2" width="150"></td>
    <td><img src="https://shekharsfermion.github.io/animation_error3_screen_rec.gif" alt="Animation 2" width="150"></td>
    <td><img src="https://shekharsfermion.github.io/animation_error4_screen_rec.gif" alt="Animation 2" width="150"></td>
    <td><img src="https://shekharsfermion.github.io/animation_error5_screen_rec.gif" alt="Animation 2" width="150"></td>
    </tr>
  <tr>
    <td><img src="https://shekharsfermion.github.io/animation_error6_scrren_rec.gif" alt="Animation 1" width="150"></td>
    <td><img src="https://shekharsfermion.github.io/animation_error7_screen_rec.gif" alt="Animation 2" width="150"></td>
    <td><img src="https://shekharsfermion.github.io/animation_error8_screen_rec.gif" alt="Animation 2" width="150"></td>
    <td><img src="https://shekharsfermion.github.io/animation_error9_scrren_rec.gif" alt="Animation 2" width="150"></td>
    <td><img src="https://shekharsfermion.github.io/animation_error10_screen_rec.gif" alt="Animation 2" width="150"></td>
    </tr>
</table>    

## Using page_not_found for animations

To use the `page_not_found` package, you can display an animated error page with customizable GIF dimensions. Here's an example:

```dart
import 'package:flutter/material.dart';
import 'package:uniquepackage/uniquepackage.dart';

 FutureBuilder<Widget>(
        future: PageNotFound.animatedError10(
          context: context,
          gifHeight: 200.0, // Optional: Customize gifHeight as per your requirements
          gifWidth: 200.0,  // Optional: Customize gifWidth as per your requirements
        ),

builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            return snapshot.data!;
          } else {
            return const Center(child: Text('Something went wrong.'));
          }
        },
      ),
```

## 404 error images

<table>
  <tr>
    <td><img src="https://shekharsfermion.github.io/img_curly.png" alt="Animation 1" width="150"></td>
    <td><img src="https://shekharsfermion.github.io/img_error2.png" alt="Animation 2" width="150"></td>
    <td><img src="https://shekharsfermion.github.io/img_error3.png" alt="Animation 2" width="150"></td>
    <td><img src="https://shekharsfermion.github.io/img_error4.png" alt="Animation 2" width="150"></td>
    <td><img src="https://shekharsfermion.github.io/img_error5.png" alt="Animation 2" width="150"></td>
    </tr>
  <tr>
    <td><img src="https://shekharsfermion.github.io/img_error6.png" alt="Animation 1" width="150"></td>
    <td><img src="https://shekharsfermion.github.io/img_error7.png" alt="Animation 2" width="150"></td>
    <td><img src="https://shekharsfermion.github.io/img_error8.png" alt="Animation 2" width="150"></td>
    <td><img src="https://shekharsfermion.github.io/img_error9.png" alt="Animation 2" width="150"></td>
    <td><img src="https://shekharsfermion.github.io/img_error10.png" alt="Animation 2" width="150"></td>
    </tr>
</table>  

## Using `page_not_found` for Error Images


```dart
import 'package:flutter/material.dart';
import 'package:uniquepackage/uniquepackage.dart';

 FutureBuilder<Widget>(
        future: PageNotFound.errorTemplate1(
          context: context,
        ),
builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            return snapshot.data!;
          } else {
            return const Center(child: Text('Something went wrong.'));
          }
        },
      ),
```

Developed by:
Shekhar Sardesai
Personal email - shekharsardesai4@gmail.com
Work email - shekhars@fermion.in
Publisher's LinkedIn - https://www.linkedin.com/company/fermioninfotech?trk=profile-position


