import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:social_network/screens/HomeScreen.dart';

class LoginScreen extends StatelessWidget {
	
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
						Text("Abyss"),
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
						
						RaisedButton(
							child: Text("Connexion"),
							onPressed: () {
								Navigator.pushReplacement(context, MaterialPageRoute(
									builder: (context) => HomeScreen()
								));
							},
						)
					],
				),
			),
		);
	}
	
}