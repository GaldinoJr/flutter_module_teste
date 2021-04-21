import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Screen(),
  ));
}

List details = [
  "Nós queremos te ajudar a ter uma alimentação saudável todos os dias e contamos com um grande parceiro para isso:  a Zona Cerealista Online.",
  "Nós queremos te ajudar a ter uma alimentação saudável todos os dias e contamos com um grande parceiro para isso:  a Zona Cerealista Online2.",
  "Nós queremos te ajudar a ter uma alimentação saudável todos os dias e contamos com um grande parceiro para isso:  a Zona Cerealista Online3."
];

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screenBody(
            'https://firebasestorage.googleapis.com/v0/b/vidalink-static.appspot.com/o/Images%2Fshared%2Fxxxhdpi640dpi-android.png?alt=media&token=6f8fc9a5-762f-4dfa-8985-c2188de828a3',
            'Confira os produtos'));
  }
}

Widget _screenBody(String urlImage, String buttonText) {
  MaterialColor redColor = MaterialColor(0xFFCF2860, redColors);

  return Column(children: [
    Flexible(
        flex: 3,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image(image: NetworkImage(urlImage), fit: BoxFit.cover),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    margin: EdgeInsets.fromLTRB(34, 0, 34, 20),
                    width: double.infinity,
                    child: ElevatedButton(
                      child: Text(buttonText,
                          style: TextStyle(fontSize: 18, fontFamily: 'Nunito')),
                      style: ElevatedButton.styleFrom(
                          primary: redColor[900],
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),
                          ),
                          padding: EdgeInsets.all(12)),
                      onPressed: () {
                        print('Pressed');
                      },
                    )))
          ],
        )),
    Flexible(
        flex: 4,
        child: Stack(
          fit: StackFit.expand,
          children: [
            PageView.builder(
                controller: _controller,
                itemCount: details.length,
                itemBuilder: (_, i) {
                  return pagerDetail(i);
                },
                onPageChanged: (int index) {
                  _currentPageNotifier.value = index;
                }),
            Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 24),
                    child: indicator4())),
          ],
        ))
  ]);
}

final _currentPageNotifier = ValueNotifier<int>(0);
final controller = PageController(viewportFraction: 0.8);
//
// Widget indicator3() {
//   return SmoothPageIndicator(
//     controller: controller, // PageController
//     count: details.length,
//     effect: SlideEffect(
//         dotColor: MaterialColor(0xFF79BDC5, indicatorColor),
//         activeDotColor: MaterialColor(
//             0xFF048e9a, selectedIndicatorColor)), // your preferred effect
//   );
// }
//
// Widget _buildCircleIndicator2() {
//   return CirclePageIndicator(
//     size: 8.0,
//     selectedSize: 14.0,
//     itemCount: details.length,
//     currentPageNotifier: _currentPageNotifier,
//     selectedDotColor: MaterialColor(0xFF048e9a, selectedIndicatorColor),
//     dotColor: MaterialColor(0xFF79BDC5, indicatorColor),
//   );
// }

Widget pagerDetail(int position) {
  MaterialColor browColor = MaterialColor(0xFF8a8a8a, browColors);
  return Align(
      alignment: Alignment.topCenter,
      child: Container(
          margin: EdgeInsets.fromLTRB(34, 34, 34, 0),
          height: 144,
          child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
              ),
              elevation: 6,
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Row(
                  children: [
                    Container(
                        padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                        child:
                            Image(image: AssetImage('images/ic_celular.png'))),
                    Expanded(
                        child: SingleChildScrollView(
                            child: Text(
                      details[position],
                      style: TextStyle(
                          fontFamily: 'NunitoRegular',
                          color: browColor,
                          fontSize: 15),
                    )))
                  ],
                ),
              ))));
}

Map<int, Color> redColors = {
  50: Color.fromRGBO(207, 40, 96, .1),
  100: Color.fromRGBO(207, 40, 96, .2),
  200: Color.fromRGBO(207, 40, 96, .3),
  300: Color.fromRGBO(207, 40, 96, .4),
  400: Color.fromRGBO(207, 40, 96, .5),
  500: Color.fromRGBO(207, 40, 96, .6),
  600: Color.fromRGBO(207, 40, 96, .7),
  700: Color.fromRGBO(207, 40, 96, .8),
  800: Color.fromRGBO(207, 40, 96, .9),
  900: Color.fromRGBO(207, 40, 96, 1),
};

Map<int, Color> browColors = {
  50: Color.fromRGBO(138, 138, 138, .1),
  100: Color.fromRGBO(138, 138, 138, .2),
  200: Color.fromRGBO(138, 138, 138, .3),
  300: Color.fromRGBO(138, 138, 138, .4),
  400: Color.fromRGBO(138, 138, 138, .5),
  500: Color.fromRGBO(138, 138, 138, .6),
  600: Color.fromRGBO(138, 138, 138, .7),
  700: Color.fromRGBO(138, 138, 138, .8),
  800: Color.fromRGBO(138, 138, 138, .9),
  900: Color.fromRGBO(138, 138, 138, 1),
};

Map<int, Color> selectedIndicatorColor = {
  50: Color.fromRGBO(4, 142, 154, .1),
  100: Color.fromRGBO(4, 142, 154, .2),
  200: Color.fromRGBO(4, 142, 154, .3),
  300: Color.fromRGBO(4, 142, 154, .4),
  400: Color.fromRGBO(4, 142, 154, .5),
  500: Color.fromRGBO(4, 142, 154, .6),
  600: Color.fromRGBO(4, 142, 154, .7),
  700: Color.fromRGBO(4, 142, 154, .8),
  800: Color.fromRGBO(4, 142, 154, .9),
  900: Color.fromRGBO(4, 142, 154, 1),
};

Map<int, Color> indicatorColor = {
  50: Color.fromRGBO(122, 186, 192, .1),
  100: Color.fromRGBO(122, 186, 192, .2),
  200: Color.fromRGBO(122, 186, 192, .3),
  300: Color.fromRGBO(122, 186, 192, .4),
  400: Color.fromRGBO(122, 186, 192, .5),
  500: Color.fromRGBO(122, 186, 192, .6),
  600: Color.fromRGBO(122, 186, 192, .7),
  700: Color.fromRGBO(122, 186, 192, .8),
  800: Color.fromRGBO(122, 186, 192, .9),
  900: Color.fromRGBO(122, 186, 192, 1),
};

final _controller = new PageController();
const _kDuration = const Duration(milliseconds: 300);

const _kCurve = Curves.ease;

final _kArrowColor = Colors.black.withOpacity(0.8);

Widget indicator4() {
  return DotsIndicator(
    controller: _controller,
    itemCount: details.length,
    onPageSelected: (int page) {
      _controller.animateToPage(
        page,
        duration: _kDuration,
        curve: _kCurve,
      );
    },
    color: MaterialColor(0xFF79BDC5, indicatorColor),
    selectedColor:  MaterialColor(0xFF048e9a, selectedIndicatorColor),
  );
}

class DotsIndicator extends AnimatedWidget {
  DotsIndicator({
    this.controller,
    this.itemCount,
    this.onPageSelected,
    this.color: Colors.white,
    this.selectedColor: Colors.white,
    this.dotSize = 7.5,
    this.selectDotSize = 14.0
  }) : super(listenable: controller);

  /// The PageController that this DotsIndicator is representing.
  PageController controller;

  /// The number of items managed by the PageController
  int itemCount;

  /// Called when a dot is tapped
  ValueChanged<int> onPageSelected;

  /// The color of the dots.
  ///
  /// Defaults to `Colors.white`.
  Color color;

  Color selectedColor;

  // The base size of the dots
  double dotSize;

  double selectDotSize;

  // The increase in the size of the selected dot
  double _kMaxZoom = 2.0;

  // The distance between the center of each dot
  double _kDotSpacing = 18.0;

  List colors = [];
  List colorsChanged = [];

  Widget _buildDot(int index) {
    double selectedness = Curves.easeOut.transform(
      max(
        0.0,
        1.0 - ((controller.page ?? controller.initialPage) - index).abs(),
      ),
    );
    double zoom = 1.0 + (_kMaxZoom - 1.0) * selectedness;

    var currentColor = (zoom == 1) ? color: selectedColor;


    if(colors.length <= index) {
      colors.add(currentColor);
      colorsChanged.add(false);
    }
    else{
      var oldColor = colors[index];
      if(zoom > 1 && zoom < 2){
        if(!colorsChanged[index]) {
          currentColor = (oldColor == color) ? selectedColor : color;
          colors[index] = currentColor;
          colorsChanged[index] = true;
        }
        else{
          currentColor = colors[index];
        }
      }
      else  if(zoom == 2){
        for(var i = 0; i< colorsChanged.length; i++){
          colorsChanged[i] = false;
        }
      }
    }
    


    return new Container(
      width: _kDotSpacing,
      child: new Center(
        child: new Material(
          color: currentColor,
          type: MaterialType.circle,
          child: new Container(
            width: getSizeByZoom(zoom),
            height: getSizeByZoom(zoom),
            child: new InkWell(
              onTap: () => onPageSelected(index),
            ),
          ),
        ),
      ),
    );
  }

  double getSizeByZoom(double zoom){
    return (zoom == 2) ? selectDotSize : (dotSize * zoom > selectDotSize) ? selectDotSize : dotSize * zoom;
  }

  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: new List<Widget>.generate(itemCount, _buildDot),
    );
  }
}
