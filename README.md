<!-- logo IMG -->
<p align="center">
    <img width="340" src="@bastndev/img/dash.gif" alt="Vite logo">
  </a>
</p>

<!-- - --- --- --- Create Icon -- --- --- ---  -->
## Flutter Tools ⚙️
**🟩 Icon**
1. Create Icon with AI and edit
>- deepai.org: [⠮ AI ⠵](https://deepai.org/machine-learning-model/cute-creature-generator)

>- Leonardo.ai: [⠮ AI ⠵](https://app.leonardo.ai)

>- IconKitchen: [ Edit ✄](https://icon.kitchen/)

<!-- - --- --- --- Create Splash Screen -- --- --- ---  -->
**🎴 Splash Screen**

2. Create a custom splash screen

>- Installing: ``flutter pub add lottie``
>- Active in pubspec: ``assets:``

3. Code of splash Screen animation

```dart
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:splash_screen/home.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: (3 * 1000).round()), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: content(),
    );
  }

  Widget content() {
    return Center(
      child: Container(
        child: Lottie.asset("assets/logo.json"),
      ),
    );
  }
}
````
