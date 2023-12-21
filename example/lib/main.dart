import 'package:flutter/material.dart';
import 'package:ripple_image_button/ripple_image_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Center(
          child: RippleImageButton(
            image: const AssetImage('example/images/google_sign_image.png'),  // or NetwrokImage
            width: 200,
            height: 50,
            onTap: () {

            },
            /// borderRadius: [double] default = 0.0
            /// fit : [BoxFit] default = BoxFit.cover
            /// splashColor : [Color] default = null
          ),
        ),
      ),
    );
  }
}