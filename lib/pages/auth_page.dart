import 'package:flutter/material.dart';
import 'home_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        height: double.infinity,
        padding: const EdgeInsets.only(top: 30.0, right: 10.0),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          Expanded(
            flex: 1,
            child: Image.asset('assets/images/logo_vertical.png',
                fit: BoxFit.contain),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.only(left: 50.0),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                Text(
                  'Test',
                  style: TextStyle(fontSize: 30.0, color: Colors.white),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                TextFormField(
                  textAlign: TextAlign.end,
                  style: TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0)),
                      hintText: 'Login',
                      hintStyle: TextStyle(color: Colors.white),
                      labelStyle: TextStyle(color: Colors.white)),
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  textAlign: TextAlign.end,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0)),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.white),
                      labelStyle: TextStyle(color: Colors.white)),
                ),
                SizedBox(height: 50.0),
                RaisedButton(
                  padding: const EdgeInsets.only(
                      left: 60.0, top: 10.0, right: 60.0, bottom: 10.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.white)),
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "/", (r) => false);
                  },
                  color: Colors.black,
                  textColor: Colors.white,
                  child: Text("Войти".toUpperCase(),
                      style: TextStyle(fontSize: 15)),
                ),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
