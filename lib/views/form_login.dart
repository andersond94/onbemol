import 'package:bechannel/components/customTextField.dart';
import 'package:bechannel/views/home_page.dart';
import 'package:bechannel/views/signin_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

//CLASSE QUE EXIBE CAMPOS DE CAPTURA DE INFORMAÇÕES
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NeumorphicTheme(
      theme: NeumorphicThemeData(
        defaultTextColor: Color(0xFF3E3E3E),
        accentColor: Colors.grey,
        variantColor: Colors.black38,
        depth: 8,
        intensity: 0.65,
      ),
      themeMode: ThemeMode.light,
      child: Material(
        child: NeumorphicBackground(
          child: _Page(),
        ),
      ),
    );
  }
}

class _Page extends StatefulWidget {
  @override
  __PageState createState() => __PageState();
}

class __PageState extends State<_Page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Neumorphic(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              style: NeumorphicStyle(
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 8,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: NeumorphicButton(
                      onPressed: () {},
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Text(
                        "Sair",
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                  _logoLogin(),
                  SizedBox(
                    height: 8,
                  ),
                  TextFieldNeu(
                    isPassword: false,
                    label: "E-mail",
                    hint: "",
                    onChanged: (firstName) {
                      setState(() {});
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFieldNeu(
                    isPassword: true,
                    label: "Senha",
                    hint: "",
                    onChanged: (firstName) {
                      setState(() {});
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 25,
                      ),
                      NeumorphicButton(
                          margin: EdgeInsets.only(top: 12),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          style: NeumorphicStyle(
                            shape: NeumorphicShape.flat,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(8)),
                            //border: NeumorphicBorder()
                          ),
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            "Fazer login",
                            style: TextStyle(
                                color: _textColor(context), fontSize: 14),
                          )),
                      SizedBox(
                        width: 25,
                      ),
                      NeumorphicButton(
                          margin: EdgeInsets.only(top: 12),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => StepperForm()));
                          },
                          style: NeumorphicStyle(
                            shape: NeumorphicShape.flat,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(8)),
                            //border: NeumorphicBorder()
                          ),
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            "Criar acesso",
                            style: TextStyle(
                                color: _textColor(context), fontSize: 14),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'SOFTWARE ENGINEER - FLUTTER\nBemol Digital',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blueGrey.withOpacity(0.8),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _logoLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Neumorphic(
        padding: EdgeInsets.all(10),
        style: NeumorphicStyle(
          boxShape: NeumorphicBoxShape.circle(),
          // depth: NeumorphicTheme.embossDepth(context),
        ),
        child:
            // Lottie.asset('assets/images/spin.json', height: 80),
            stateLogin(),
      ),
    );
  }
}

Color _textColor(BuildContext context) {
  if (NeumorphicTheme.isUsingDark(context)) {
    return Colors.white;
  } else {
    return Colors.black;
  }
}

Widget stateLogin() {
  return Image.asset(
    'assets/images/logo_bedigital_globo.png',
    height: 80,
    width: 80,
  );
}
