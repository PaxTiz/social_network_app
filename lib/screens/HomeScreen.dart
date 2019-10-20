import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:social_network/screens/TabBarViewScreen.dart';

class HomeScreen extends StatelessWidget {
	
	@override
  	Widget build(BuildContext context) {
    	return MaterialApp(
			theme: ThemeData(
				brightness: Brightness.dark,
				primaryColor: Colors.blue,
				accentColor: Colors.blueAccent,
			
				fontFamily: "SF Pro Display",
			
				textTheme: TextTheme(
					headline: TextStyle(
						fontSize: 36,
						fontWeight: FontWeight.bold,
					),
					title: TextStyle(
						color: Colors.white,
						fontWeight: FontWeight.w600,
					),
					body1: TextStyle(
				
					),
					button: TextStyle(
				
					)
				),
			),
			home: DefaultTabController(
				length: 3,
				child: TabBarViewScreen(),
			)
		);
  	}
  	
}