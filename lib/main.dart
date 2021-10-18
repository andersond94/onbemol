import 'package:bechannel/utils/theme_colors.dart';
import 'package:bechannel/views/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() {
  //COMANDO ROOT PARA EXECUÇÃO DO APLICATIVO
  runApp(MyApp());
}

  //CLASSE INCIAL DA APLICAÇÃO
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //RETORNA TEMA NEUMORPHIC 
    return NeumorphicApp(
      debugShowCheckedModeBanner: false,
      title: 'BeChannel',
      themeMode: ThemeMode.light,
      theme: NeumorphicThemeData(
        baseColor: baseColorLight,
        accentColor: primaryColor,
        lightSource: LightSource.topLeft,
        depth: 10,
      ),
      darkTheme: NeumorphicThemeData(
        baseColor: baseColorDark,
        lightSource: LightSource.topLeft,
        depth: 6,
      ),
      //CHAMA UMA TELA DE 3s COM A LOGO DA BEMOL DIGITAL
      home: SplashPage(),
      
    );
    
  }
}
