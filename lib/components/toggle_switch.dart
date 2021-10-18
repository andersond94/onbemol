import 'package:bechannel/utils/theme_colors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ToggleSwitch extends StatefulWidget {
  ToggleSwitch({key}) : super(key: key);

  @override
  _ToggleSwithState createState() => _ToggleSwithState();
}

class _ToggleSwithState extends State<ToggleSwitch> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return 
     Column(
       children: [
          Text(
                    'Lembrar-me',
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  NeumorphicToggle(
                    height: 45,
                    width: 100,
                    selectedIndex: _selectedIndex,
                    children: [
                      ToggleElement(
                        background: Center(
                          child: Icon(
                            Icons.lock,
                            color: primaryColor,
                          ),
                        ),
                      ),
                      ToggleElement(
                        background: Center(
                          child: Icon(
                            Icons.lock_open,
                            color: secondaryColor,
                          ),
                        ),
                      ),
                    ],
                    thumb: Neumorphic(
                      style: NeumorphicStyle(
                        boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.all(Radius.circular(12)),
                        ),
                      ),
                      child: Icon(
                        Icons.blur_on,
                        color: Colors.grey,
                      ),
                    ),
                    onAnimationChangedFinished: (value) {
                      if (value == 0) {
                        print("lembrar-me ativado: $_selectedIndex");
                      }
                    },
                    onChanged: (value) {
                      setState(() {
                        _selectedIndex = value;
                        print("lembarme desativado: $_selectedIndex");
                      });
                    },
                  ),
       ],
     );
  }
}