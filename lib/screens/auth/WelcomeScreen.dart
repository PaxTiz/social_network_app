import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:social_network/screens/auth/LoginScreen.dart';
import 'package:social_network/screens/auth/RegisterScreen.dart';

class WelcomeScreen extends StatelessWidget {
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: Color.fromRGBO(255, 245, 231, 1),
			body: Container(
				margin: EdgeInsets.only(left: 50, right: 50),
				child: Center(
					child: Column(
						mainAxisAlignment: MainAxisAlignment.spaceEvenly,
						crossAxisAlignment: CrossAxisAlignment.stretch,
						children: <Widget>[
							Image.network(
								"https://i.pinimg.com/originals/0c/d9/90/0cd990ffed0948224ffec40661206514.png",
								width: 300,
								height: 300,
							),
							Row(
								mainAxisAlignment: MainAxisAlignment.spaceBetween,
								children: <Widget>[
									RaisedButton(
										child: Text("Connexion"),
										onPressed: () => Navigator.pushReplacement(context, PageTransition(
											type: PageTransitionType.downToUp,
											child: LoginScreen()
										)),
										elevation: 5,
									),
									RaisedButton(
										child: Text("Créer un compte"),
										onPressed: () => Navigator.pushReplacement(context, PageTransition(
											type: PageTransitionType.upToDown,
											child: RegisterScreen()
										)),
									)
								],
							)
						],
					),
				),
			),
		);
	}
	
}