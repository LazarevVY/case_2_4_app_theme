import 'package:flutter/material.dart';
import 'package:case_2_4_app_theme/util/theme.dart';

void main() {
  runApp(const ThemesDemoAppEx()); //AuthScreen());
}
class ThemesDemoAppEx extends StatefulWidget {
  const ThemesDemoAppEx({Key? key}) : super(key: key);

  @override
  _ThemesDemoAppExState createState() => _ThemesDemoAppExState();
}

class _ThemesDemoAppExState extends State<ThemesDemoAppEx> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: userDefinedTheme(),
        //themeMode: ThemeMode.light,
        home: ThemesDemoScreen ()
    );
  }
}


class ThemesDemoScreen extends StatefulWidget {
  const ThemesDemoScreen({Key? key}) : super(key: key);

  @override
  _ThemesDemoScreenState createState() => _ThemesDemoScreenState();
}

class _ThemesDemoScreenState extends State<ThemesDemoScreen> {

  @override
  Widget build(BuildContext context) {
    var _borderStyle = OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(
          color: Theme.of(context).primaryColor,
          width: 2,
        ));

    var _linkTextStyle = Theme.of(context).textTheme.headline1;
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg1.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 150,
                ),
                const SizedBox(
                  width: 110,
                  height: 84,
                  child: Image(
                    image: AssetImage(
                      "assets/images/dart-logo-bird.png",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Введите логин в виде\n10 цифр номера телефона",
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    filled: true,
                    //fillColor: Color(0xFFECEFF1),
                    enabledBorder: _borderStyle,
                    focusedBorder: _borderStyle,
                    labelText: "Телефон",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    //fillColor: Color(0xFFECEFF1),
                    enabledBorder: _borderStyle,
                    focusedBorder: _borderStyle,
                    labelText: "Пароль",
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                SizedBox(
                    width: 154,
                    height: 42,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Войти"),
                      style: ElevatedButton.styleFrom(
                        //primary: Color(0xFF0079D0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(36.0)),
                      ),
                    )),
                const SizedBox(
                  height: 62,
                ),
                InkWell(
                    child: Text("Регистрация", style: _linkTextStyle),
                    onTap: () {}),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: Text("Забыли пароль?",
                      //style: _linkTextStyle,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ));
  }
}
