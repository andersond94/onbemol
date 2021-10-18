import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(
    BuildContext context,
  ) {
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
        child: Center(
          child: Text(
            'Página inicial',
            style: TextStyle(fontSize: 18, color: Colors.blueGrey),
          ),
        ),
      ),
    );
  }
}
