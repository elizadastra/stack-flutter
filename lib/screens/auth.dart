import 'package:flutter/material.dart';
import 'package:stack/screens/home.dart';

//Widget for input

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  LoginState createState() {
    return LoginState();
  }
}

class LoginState extends State<LoginWidget> {
  final FocusNode focusEmail = FocusNode();
  final FocusNode focusPassword = FocusNode();
  final GlobalKey<ScaffoldState> _mainScaffoldKey = GlobalKey<ScaffoldState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _mainScaffoldKey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(
                    top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                child: Text(
                  'Вход',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                child: TextField(
                  focusNode: focusEmail,
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(
                      fontFamily: "SignikaSemiBold",
                      fontSize: 16.0,
                      color: Color(0XFFA98CE1)),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      hintText: "Email",
                      hintStyle: const TextStyle(
                          fontFamily: "SignikaSemiBold",
                          fontSize: 18.0,
                          color: Color(0XFFA98CE1))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                child: TextField(
                  focusNode: focusPassword,
                  controller: passwordController,
                  style: const TextStyle(
                      fontFamily: "SignikaSemiBold",
                      fontSize: 16.0,
                      color: Color(0XFFA98CE1)),
                  obscureText: !_passwordVisible,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      hintText: "Пароль",
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                        child: Icon(
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                      ),
                      hintStyle: const TextStyle(
                          fontFamily: "SignikaSemiBold",
                          fontSize: 18.0,
                          color: Color(0XFFA98CE1))),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 60.0, bottom: 26.0),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    color: Color(0xFFF90640)),
                child: MaterialButton(
                    highlightColor: Colors.transparent,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 42.0),
                      child: Text(
                        "Войти",
                        style: TextStyle(
                            fontFamily: "SignikaSemiBold",
                            color: Colors.white,
                            fontSize: 14.0),
                      ),
                    ),
                    onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyHomePage()),
                        )),
              ),
            ],
          ),
        ));
  }
}
