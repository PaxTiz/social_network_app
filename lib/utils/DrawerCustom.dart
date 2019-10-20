import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerCustom extends StatelessWidget {
	
	@override
	Widget build(BuildContext context) {
		return Drawer(
			child: ListView(
				children: <Widget>[
					DrawerHeader(
						child: Column(
							crossAxisAlignment: CrossAxisAlignment.start,
							mainAxisAlignment: MainAxisAlignment.spaceAround,
							children: <Widget>[
								Text("Hey ! You're not connected :("),
								Row(
									mainAxisAlignment: MainAxisAlignment.spaceBetween,
									children: <Widget>[
										RaisedButton(
											child: Text("Login"),
											onPressed: () {
											
											},
										),
										RaisedButton(
											child: Text("Sign Up"),
											onPressed: () {
											
											},
										),
									],
								)
							],
						),
						decoration: BoxDecoration(
							color: Theme.of(context).primaryColor
						),
					),
					ListTile(
						title: Text("Coucou"),
					
					)
				],
			),
		);
	}
	
}