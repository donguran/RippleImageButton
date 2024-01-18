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
        primaryColor: Colors.purple.shade500,
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                height: 50,
                child: RippleImageButton(
                  image: const AssetImage('images/google_sign_image.png'), // or NetworkImage
                  onTap: () {},
                  width: 50,
                  height: 100,
                ),
              ),

              const SizedBox(height: 18,),

              RippleImageButton(
                image: const AssetImage('images/google_sign_image.png'),
                onTap: () {},
                splashColor: Colors.red.withOpacity(0.5),
              ),

              const SizedBox(height: 18),

              RippleImageButton(
                image: const AssetImage('images/google_sign_image.png'),
                onTap: () {},
                width: 200,
                height: 50,
                borderRadius: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
