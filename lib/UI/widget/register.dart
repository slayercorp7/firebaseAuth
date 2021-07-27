import 'package:examen_parcial/UI/widget/gradiente.dart';
import 'package:flutter/material.dart';
import 'TextImput.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.loose,
        children: [
          Gradiente(),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 90, left: 60),
                width: 250,
                height: 150,
                child: Text(
                  "Profile",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black38),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                  width: 110,
                  height: 90,
                  margin: EdgeInsets.only(top: 150, left: 140),
                  child: Image(
                    image: AssetImage("assets/img/img4.png"),
                  ))
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                  width: 300,
                  height: 40,
                  margin: EdgeInsets.only(top: 250, left: 40),
                  child: TextInput(
                      hint: "email adress",
                      inputType: TextInputType.emailAddress,
                      controller: TextEditingController(),
                      hintText: "email adress"))
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                  width: 300,
                  height: 40,
                  margin: EdgeInsets.only(top: 300, left: 40),
                  child: TextInput(
                      hint: "username",
                      inputType: TextInputType.name,
                      controller: TextEditingController(),
                      hintText: "username"))
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                  width: 300,
                  height: 40,
                  margin: EdgeInsets.only(top: 350, left: 40),
                  child: TextInput(
                      hint: "pass",
                      inputType: TextInputType.text,
                      controller: TextEditingController(),
                      hintText: "pass"))
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                  width: 300,
                  height: 40,
                  margin: EdgeInsets.only(top: 400, left: 40),
                  child: TextInput(
                      hint: "repeat Password",
                      inputType: TextInputType.text,
                      controller: TextEditingController(),
                      hintText: "repeat Password"))
            ],
          ),
          Row(
            children: [
              Container(
                width: 300,
                height: 80,
                margin: EdgeInsets.only(top: 440, left: 40),
                alignment: Alignment.topCenter,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Sign in'),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.purple, minimumSize: Size(150, 30))),
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: 250,
                height: 100,
                margin: EdgeInsets.only(top: 510, left: 40),
                alignment: Alignment.topCenter,
                child: Text(
                  "login with",
                  textAlign: TextAlign.right,
                ),
              )
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    margin: EdgeInsets.only(top: 550, left: 110),
                    child: Image(
                      image: AssetImage("assets/img/img2.png"),
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    margin: EdgeInsets.only(top: 550, left: 40),
                    child: Image(
                      image: AssetImage("assets/img/img3.png"),
                    ),
                  )
                ],
              )
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 700, left: 120),
                    child: Text("terms of service",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black54,
                        )),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
