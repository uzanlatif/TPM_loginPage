import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Fauzan App"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LogoImageAssets(),
            new Text(
              "Login",
              style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink),
            ),
            new Padding(padding: const EdgeInsets.only(top: 20.0)),
            new TextField(
              decoration: new InputDecoration(
                icon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                hintText: "Username",
              ),
            ),
            new Padding(padding: const EdgeInsets.only(top: 20.0)),
            new TextField(
              decoration: new InputDecoration(
                icon: Icon(Icons.security),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                hintText: "Password",
              ),
              obscureText: true,
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 40.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("Login"),
                  color: Colors.pink,
                  onPressed: () {},
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new TextButton(onPressed: () {}, child: Text("Forgot Password"))
          ],
        ),
      ),
    );
  }
}

class LogoImageAssets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/images/love.png');

    Image image = Image(image: assetImage, height: 80, width: 80);
    return Container(
      child: image,
    );
  }
}
