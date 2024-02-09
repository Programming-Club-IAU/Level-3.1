# ![Alt text](/readme/banner.png)

## Table of Content

- [Overview](#overview)
- [Learning Objectives](#learning-objectives)
- [Setup And Tutorial](#setup-and-tutorial)
- [Project Overview](#project-overview)
- [Submission Guidelines](#submission-guidelines)
- [Design Inspiration](#design-inspiration)

## Overview

In this week, we will learn about the basics of Flutter and Dart. We will also learn how to set up the development environment for Flutter and create a simple Profile Page application. You will also learn about the basic structure of a Flutter application and how to create a simple application using Flutter.

## Learning Objectives

By the end of this week, you will be able to:

- Understand the basics of Flutter and Dart
- Set up the development environment for Flutter
- Create a simple Profile Page application
- Understand the basic structure of a Flutter application
- Create a simple application using Flutter

## Resources

### Online Materials

- [Flutter - Beautiful native apps in record time](https://flutter.dev/)
- [Flutter - Get started: install](https://flutter.dev/docs/get-started/install)
- [Flutter - Get started: test drive](https://flutter.dev/docs/get-started/test-drive)
- [Flutter - Building layouts](https://flutter.dev/docs/development/ui/layout)
- [Flutter Basic Widgets](https://docs.flutter.dev/ui/widgets/basics)
- [Stateful vs Stateless](https://flutter.dev/docs/development/ui/interactive#stateful-stateless)
- [Flutter CodeLab](https://codelabs.developers.google.com/codelabs/flutter-codelab-first#0)
- [Custom Themes](https://flutter.dev/docs/cookbook/design/themes)
- [Short Video](https://www.youtube.com/watch?v=D4nhaszNW4o)

### Custom Material

- [Introduction to flutter basics (Arabic)](https://www.youtube.com/watch?v=LmhX1xLTK0s)
- [Introduction to flutter basics (English)](https://www.youtube.com/watch?v=ke5lCvwLZzo)

## Setup and Tutorial

### 1. Setup

#### 1.1 Fork this repository

To setup this project, please follow this simple git and github tutorial provided [here](https://github.com/GDSC-IAU/git-and-github)

#### 1.2 Setup your emulator

Assuming you followed the selection project, your `flutter doctor` should be all green. If it is not all green, please go back to [Installing flutter](https://github.com/GDSC-IAU/Selection-Project?tab=readme-ov-file#121-windows-using-chocolaty) here and make sure everything is installed correctly.

##### 1.2.1 Android Emulator

- Open Android Studio
- Click on `More Actions` shown below:
  ![alt text](/readme/image01.png)
- Click on `Virtual Device Manager`
- Click on `Create Virtual Device`
- Select a device and click `Next`
- Select a system image and download it. Usually, the recommended image is "Tiramisu" or "Marshmallow"
- Click `Next` and `Finish`
- Click on the `Play` button to start the emulator

##### 1.2.2 iOS Emulator

- If your mac has an Apple Silicon chip, you need to run the following command:

```bash
sudo softwareupdate --install-rosetta --agree-to-license
```

- run the following command to install CocoaPods:

```bash
sudo gem install cocoapods
```

- Download Xcode from the App Store
- Run the following command to install the Xcode command line tools:

```bash
 sudo sh -c 'xcode-select -s /Applications/Xcode.app/Contents/Developer && xcodebuild -runFirstLaunch'
```

- Run the following command to install the simulator:

```bash
xcodebuild -downloadPlatform iOS
```

- Run the following command to Accept apple's license agreement:

```bash
sudo xcodebuild -license
```

- Run the following command to run the simulator:

```bash
open -a Simulator
```

Congratulations! You have successfully set up your emulator.

### 2. Flutter Basic Widgets

- Go into the `lib` folder and open `main.dart`

#### Looking at the code

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
```

- The `main()` function is the entry point of the app. It is where the app starts executing.
- The `runApp()` function takes a widget and runs it. In this case, we are running the `MainApp` widget.
- The `MainApp` widget is a stateless widget. Stateless widgets are immutable, meaning that their properties can't change—all values are final. This widget does not have to be called `MainApp`, but it is good practice to name your widget the same as your file.
- The `MainApp` widget has a `build()` method that returns a widget. This is the widget that will be displayed when the app is launched.
- The `MainApp` widget returns a `MaterialApp` widget. The `MaterialApp` widget is a widget that provides a framework for implementing the basic material design layout of your app.

#### [MaterialApp](https://api.flutter.dev/flutter/material/MaterialApp-class.html)

```dart
MaterialApp(
    title: 'Weather App',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const Scaffold(),
    debugShowCheckedModeBanner: false,
);
```

- The `MaterialApp` widget is the root widget of your app. It is what allows you to use Material Design components in your app.
- The `MaterialApp` widget has a `home` property that takes a widget. This is the widget that will be displayed when the app is launched.
- The `MaterialApp` widget also has a `theme` property that takes a `ThemeData` object. This is where you can customize the theme of your app.
- The `MaterialApp` widget also has a `title` property that takes a string. This is the title of your app that will be displayed in the app switcher.
- The `MaterialApp` widget also has a `debugShowCheckedModeBanner` property that takes a boolean. This is whether or not you want the debug banner to be displayed in the top right corner of your app.

#### [Scaffold](https://api.flutter.dev/flutter/material/Scaffold-class.html)

```dart
Scaffold(
    appBar: AppBar(
      title: const Text('Weather App'),
    ),
    body: const Center(
      child: Text('Hello World!'),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.add),
    ),
);
```

- The `Scaffold` widget is a widget that provides a framework for implementing the basic material design layout of your app.
- The `Scaffold` widget has a `body` property that takes a widget. This is the widget that will be displayed in the body of the scaffold.
- The `Scaffold` widget also has an `appBar` property that takes a `AppBar` widget. This is the widget that will be displayed in the app bar of the scaffold.
- The `Scaffold` widget also has a `floatingActionButton` property that takes a widget. This is the widget that will be displayed in the bottom right corner of the scaffold.

#### [Row](https://api.flutter.dev/flutter/widgets/Row-class.html)

  ```dart
  Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      Text('Hello'),
      Text('World'),
    ],
  );
  ```

- The `Row` widget is a widget that displays its children in a horizontal array.
- The `Row` widget has a `mainAxisAlignment` property that takes a `MainAxisAlignment` enum. This is how the children of the row will be aligned.
- The `Row` widget also has a `crossAxisAlignment` property that takes a `CrossAxisAlignment` enum. This is how the children of the row will be aligned vertically.
- The `Row` widget also has a `children` property that takes a list of widgets. These are the widgets that will be displayed in the row.

#### [Column](https://api.flutter.dev/flutter/widgets/Column-class.html)

```dart
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: const [
    Text('Hello'),
    Text('World'),
  ],
);
```

- The `Column` widget is a widget that displays its children in a vertical array.
- The `Column` widget has a `mainAxisAlignment` property that takes a `MainAxisAlignment` enum. This is how the children of the column will be aligned.
- The `Column` widget also has a `crossAxisAlignment` property that takes a `CrossAxisAlignment` enum. This is how the children of the column will be aligned horizontally.
- The `Column` widget also has a `children` property that takes a list of widgets. These are the widgets that will be displayed in the column.

#### [Container](https://api.flutter.dev/flutter/widgets/Container-class.html)

  ```dart
  Container(
    width: 100,
    height: 100,
    color: Colors.blue,
    decoration: const BoxDecoration(
      shape: BoxShape.circle,
    ),
    child: const Text('Hello World!'),
  );
  ```

- The `Container` widget is a widget that allows you to customize the size, color, and child of a widget.
- The `Container` widget has a `width` property that takes a double. This is the width of the container.
- The `Container` widget also has a `height` property that takes a double. This is the height of the container.
- The `Container` widget also has a `color` property that takes a `Color` object. This is the color of the container.
- The `Container` widget also has a `child` property that takes a widget. This is the widget that will be displayed inside the container.

#### [SizedBox](https://api.flutter.dev/flutter/widgets/SizedBox-class.html)

```dart
SizedBox(
  width: 100,
  height: 100,
  child: const Text('Hello World!'),
);
```

- The `SizedBox` widget is a widget that allows you to customize the size of a widget.
- The `SizedBox` widget has a `width` property that takes a double. This is the width of the sized box.
- The `SizedBox` widget also has a `height` property that takes a double. This is the height of the sized box.
- The `SizedBox` widget also has a `child` property that takes a widget. This is the widget that will be displayed inside the sized box.

#### [SingleChildScrollView](https://api.flutter.dev/flutter/widgets/SingleChildScrollView-class.html)

```dart
SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  physics: const BouncingScrollPhysics(),
  child: Column(
    children: const [
      Text('Hello'),
      Text('World'),
    ],
  ),
);
```

- The `SingleChildScrollView` widget is a widget that allows you to scroll through its children.
- The `SingleChildScrollView` widget has a `child` property that takes a widget. This is the widget that will be displayed inside the scroll view.
- The `SingleChildScrollView` widget also has a `scrollDirection` property that takes a `Axis` enum. This is the direction that the scroll view will scroll in.
- The `SingleChildScrollView` widget also has a `physics` property that takes a `ScrollPhysics` object. This is the physics of the scroll view.

#### [CircleAvatar](https://api.flutter.dev/flutter/material/CircleAvatar-class.html)

```dart
CircleAvatar(
  radius: 50,
  backgroundImage: NetworkImage(
    'https://picsum.photos/200',
  ),
);
```

- The `CircleAvatar` widget is a widget that displays an image in a circle.
- The `CircleAvatar` widget has a `radius` property that takes a double. This is the radius of the circle.
- The `CircleAvatar` widget also has a `backgroundImage` property that takes an `ImageProvider` object. This is the image that will be displayed in the circle.
- The `CircleAvatar` widget also has a `child` property that takes a widget. This is the widget that will be displayed inside the circle.

### 3. Importing Assets

#### Modifying the `pubspec.yaml` file

- Go into the `pubspec.yaml` file
- Under the `flutter` section, you'll see a `assets` section
- Add the following code to the `assets` section:

```yaml
  - assets/images/
```

- This will tell Flutter to look in the `assets/images/` folder for any assets that you want to use in your app
- Save the `pubspec.yaml` file

#### Adding an image

- create a folder called `images` in the `assets` folder
- add an image to the `images` folder

#### AssetImage vs NetworkImage

- There are two ways to add an image to your app
  - `AssetImage`
    - This is used for images that are stored locally in your app
  - `NetworkImage`
    - This is used for images that are stored on the internet

#### [AssetImage](https://api.flutter.dev/flutter/painting/AssetImage-class.html)

```dart
Image(
  image: AssetImage('assets/images/image.png'),
);
```

- The `Image` widget is a widget that displays an image.
- The `Image` widget has an `image` property that takes an `ImageProvider` object. This is the image that will be displayed.
- The `AssetImage` widget is a widget that displays an image that is stored locally in your app.

#### [NetworkImage](https://api.flutter.dev/flutter/painting/NetworkImage-class.html)

```dart
Image(
  image: NetworkImage('https://picsum.photos/200'),
);
```

- The `NetworkImage` widget is a widget that displays an image that is stored on the internet.
- The `NetworkImage` widget has a `url` property that takes a string. This is the url of the image that will be displayed.
- The `Image` widget is a widget that displays an image.

#### Adding an image to a container

```dart
Container(
  width: 100,
  height: 100,
  decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage('assets/images/image.png'),
    ),
  ),
);
```

- The `Container` widget is a widget that allows you to customize the size, color, and child of a widget.
- The `Container` widget has a `decoration` property that takes a `BoxDecoration` object. This is the decoration of the container.
- The `BoxDecoration` widget is a widget that allows you to customize the decoration of a container.
- The `BoxDecoration` widget has an `image` property that takes a `DecorationImage` object. This is the image that will be displayed in the container.

#### 4. Creating a custom widget (example: detailsRow)

- Go into the `lib` folder and create a folder called `widgets`
- Create a file called `details_row.dart` in the `widgets` folder

```dart
import 'package:flutter/material.dart';

class DetailsRow extends StatelessWidget {
  const DetailsRow({
    super.key,
    required this.text,
    required this.icon,
  });

  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        icon,
        Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(),
      ],
    );
  }
}
```

- The `DetailsRow` widget is a widget that displays a row of details.
- We have created a custom widget called `DetailsRow` that takes two properties: `text` and `icon`.
- The `text` property is a string that will be displayed in the row.
- The `icon` property is an icon that will be displayed in the row.

#### Using the custom widget

- Go into the `main.dart` file
- Import the `DetailsRow` widget

```dart
import 'widgets/details_row.dart';
```

- Use the `DetailsRow` widget

```dart
DetailsRow(
  text: 'Feels Like 70°',
  icon: const Icon(
    Icons.thermostat_outlined,
    color: Colors.black,
  ),
),
```

### 5. Creating a screen

- Go into the `lib` folder and create a folder called `screens`
- Create a file called `home_screen.dart` in the `screens` folder

```dart
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
      ),
      body: const Center(
        child: Text('Hello World!'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
```

- The `HomeScreen` page is a widget that displays the home screen of the app.
- We have created a custom page called `HomeScreen`.
- The `HomeScreen` page is a stateless widget. Stateless widgets are immutable, meaning that their properties can't change—all values are final. This widget does not have to be called `HomeScreen`, but it is good practice to name your widget the same as your file.

#### Using the screen

- Go into the `main.dart` file
- Import the `HomeScreen` page

```dart
import 'screens/home_screen.dart';
```

- Use the `HomeScreen` page

```dart
MaterialApp(
  title: 'Weather App',
  theme: ThemeData(
    primarySwatch: Colors.blue,
  ),
  home: const HomeScreen(),
  debugShowCheckedModeBanner: false,
);
```

## Project Overview

In this week, you will create a simple Profile Page application using Flutter. The application will have a simple layout with a profile picture, name, and a short description. You will also learn how to create a simple application using Flutter.

### Requirements

- Create a simple Profile Page application using Flutter
- The application must either follow the design inspirations provided or be as complex as the design inspirations provided
- The code should be well-documented and easy to understand
- The code structure should be clean and organized

## Submission Guidelines

- The app should be pushed to Github and a pull request should be created. You can check how to push your code to Github in section [2.1.2 Add Changes](https://github.com/GDSC-IAU/git-and-github#212-add-changes).
- The pull request title should be in the following format: `<your-name> - <project-name>`. You can check how to make a pull request in section [2.1.5. Create a pull request](ttps://github.com/GDSC-IAU/git-and-github#215-create-a-pull-request).
- The pull request description should contain the following:
  - A description of the changes made..
    - A screenshot of the app.

## Design Inspiration

### [Design 1](https://dribbble.com/shots/23434982-Profile-page-mobile-UI)

![alt text](https://cdn.dribbble.com/userupload/12453992/file/original-a7a00627e6bc4d23672f85d41a442ec3.png?resize=1200x900)

### [Design 2](https://dribbble.com/shots/4926202-Profile-Page-Concept)

![alt text](https://cdn.dribbble.com/users/1416351/screenshots/4926202/media/97d00f82f8fa86f46111cac9ac710e23.png?resize=800x600&vertical=center)

### Design 3

![alt text](readme/image-1.png)
