import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Módulo detalhe de parceiros",
    home: Screen(),
  ));
}

class Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ScreenState();
}

class ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    MaterialColor redColor = MaterialColor(0xFFCF2860, redColors);
    MaterialColor browColor = MaterialColor(0xFF8a8a8a, browColors);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      // para expandir lateralmente  e ocupar tudo
      children: [
        Flexible(
            flex: 3,
            child: Stack(
              fit: StackFit.expand,
              // para expandir lateralmente e ocupar tudo o espaço
              children: [
                Image(
                    image: NetworkImage(
                        'https://firebasestorage.googleapis.com/v0/b/vidalink-static.appspot.com/o/Images%2Fshared%2Fxxxhdpi640dpi-android.png?alt=media&token=6f8fc9a5-762f-4dfa-8985-c2188de828a3'),
                    fit: BoxFit.cover),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        margin: EdgeInsets.fromLTRB(34, 0, 34, 20),
                        width: double.infinity,
                        child: ElevatedButton(
                          child: Text('Confira os produtos',
                              style: TextStyle(
                                  fontSize: 18, fontFamily: 'Nunito')),
                          style: ElevatedButton.styleFrom(
                              primary: redColor[900],
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0),
                              ),
                              padding: EdgeInsets.all(12)),
                          onPressed: () {
                            print('Pressed');
                          },
                        ))),
              ],
            )),
        Flexible(
            flex: 4,
            child: PageView(
              children: <Widget>[
                Container(
                    color: Colors.white,
                    child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(34, 34, 34, 0),
                          height: 144,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(6.0),
                            ),
                            elevation: 6,
                            child: Row(
                              children: [
                                Container(
                                    margin: EdgeInsets.fromLTRB(20, 20, 0, 20),
                                    child: Image(
                                        image: AssetImage(
                                            'images/ic_celular.png'))),
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                          margin: EdgeInsets.all(20),
                                          child: Text(
                                            "Nós queremos te ajudar a ter uma alimentação saudável todos os dias e contamos com um grande parceiro para isso:  a Zona Cerealista Online.",
                                            style: TextStyle(
                                                fontFamily: 'NunitoRegular',
                                                color: browColor,
                                                fontSize: 14),
                                          )
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ))),
                Container(
                  color: Colors.cyan,
                ),
                Container(
                  color: Colors.deepPurple,
                ),
              ],
            ))
      ],
    );
  }
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
