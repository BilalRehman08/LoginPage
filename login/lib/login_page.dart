import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 70.0,
        child: Image.asset('assets/logo3.jpg',),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: "bilalrehman08@gmail.com",
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: "123123",
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );


    final loginbutton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(24),
        ),
        onPressed: () {
          //Navigator.of(context).pushNamed(Homepage.tag);
        },
        padding: EdgeInsets.all(12),
        color: Colors.orange,
        child: Text('Log In', style: TextStyle(color: Colors.white, fontSize: 17.0)),        
      ),
    );

    final forgotlabel = FlatButton(
      child: Text(
        'Dont Have An Account? Signup',
        style: TextStyle(color: Colors.purple,fontSize : 15),
      ),
      onPressed: () {
      },
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right : 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 50.0),
            email,
            SizedBox(height: 15.0),
            password,
            SizedBox(height: 24.0),
            loginbutton,
            forgotlabel
          ],
        ),
      ),
    );
  }
}