[![Pub Version](https://img.shields.io/pub/v/ripple_image_button)](https://pub.dev/packages/ripple_image_button)

# RippleImageButton
Image Button, has ripple effect


<br/>


![KakaoTalk_20231221_141125730](https://github.com/b3lon9/RippleImageButton/assets/119420119/dde22929-ca55-4fc7-9376-18a549dc96dd)

<br/>

Install link : <a href="https://pub.dev/packages/ripple_image_button/install">https://pub.dev/packages/ripple_image_button/install</a>

#### pubspec.yaml
```dart
dependencies:
  ripple_image_button: ^1.0.7
```

<br />

#### import
```dart
import 'package:ripple_image_button/ripple_image_button.dart';
```

<br/>

#### use
```dart
    child: RippleImageButton(
      image: AssetImage('example/images/google_sign_image.png'),  // or NetwrokImage
      width: 200,
      height: 50,
      onTap: () {

      },
    ),
```

<br/>

#### parameter
```dart
ImageProvider image;  // Asset or Network Image
double width;         // width size
double height;        // height size
Function onTap;       // function
double borderRadius;  // border radius size
BoxFit fit;           // image fit
Color splashColor;    // ripple color
```

<br/>
<br/>


#### LICENSE
```text
MIT License

Copyright (c) 2023 Neander, Cave Dwellers

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
