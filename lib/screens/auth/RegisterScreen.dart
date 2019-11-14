import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:social_network/screens/HomeScreen.dart';
import 'package:social_network/screens/auth/LoginScreen.dart';

class RegisterScreen extends StatelessWidget {
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: Color.fromRGBO(255, 245, 231, 1),
			body: Container(
				margin: EdgeInsets.symmetric(horizontal: 50),
				child: Column(
					mainAxisAlignment: MainAxisAlignment.center,
					crossAxisAlignment: CrossAxisAlignment.start,
					children: <Widget>[
						Center(
							child: Text("ABYSS", style: TextStyle(
								color: Colors.blue,
								fontSize: 36
							),),
						),
						Container(height: 80,),
						
						Text("Numéro de téléphone", style: TextStyle(color: Colors.blue),),
						TextFormField(
							keyboardType: TextInputType.phone,
							cursorColor: Colors.blue,
							decoration: InputDecoration(
								fillColor: Colors.blue,
								focusColor: Colors.blue,
								border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
								enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue))
							),
							style: TextStyle(
								color: Colors.blue,
							),
							validator: (value) {
								if(value.isEmpty) return "Please enter your phone numner";
								else return null;
							},
						),
						Container(height: 30,),
						
						Text("Email", style: TextStyle(color: Colors.blue),),
						TextField(
							keyboardType: TextInputType.emailAddress,
							autocorrect: false,
							cursorColor: Colors.blue,
							decoration: InputDecoration(
								fillColor: Colors.blue,
								focusColor: Colors.blue,
								border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
								enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
							),
							style: TextStyle(
								color: Colors.blue,
							),
						),
						Container(height: 30,),
						
						Text("Mot de passe", style: TextStyle(color: Colors.blue),),
						TextField(
							keyboardType: TextInputType.text,
							obscureText: true,
							autocorrect: false,
							cursorColor: Colors.blue,
							decoration: InputDecoration(
								fillColor: Colors.blue,
								focusColor: Colors.blue,
								border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
								enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
							),
							style: TextStyle(
								color: Colors.blue,
							),
						),
						Container(height: 30,),
						
						Row(
							mainAxisAlignment: MainAxisAlignment.spaceBetween,
							children: <Widget>[
								RaisedButton(
									child: Text("Créer un compte"),
									onPressed: () {
										Navigator.pushReplacement(context, MaterialPageRoute(
											builder: (context) => HomeScreen()
										));
									},
								),
								GestureDetector(
									child: Text("Connexion", style: TextStyle(color: Colors.blue),),
									onTap: () {
										Navigator.pushReplacement(context, MaterialPageRoute(
											builder: (context) => LoginScreen()
										));
									},
								)
							],
						)
					],
				),
			),
		);
	}
	
}