import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:social_network/screens/FavoritesScreen.dart';
import 'package:social_network/screens/RecommendedScreen.dart';
import 'package:social_network/screens/TrendingScreen.dart';

class HomeScreen extends StatelessWidget {
	
	@override
  	Widget build(BuildContext context) {
    	return Scaffold(
			appBar: GradientAppBar(
				title: Text("Abyss", style: Theme.of(context).textTheme.title,),
				centerTitle: false,
				actions: <Widget>[
					IconButton(
						icon: Icon(Icons.notifications),
						onPressed: () {
						
						},
					),
					IconButton(
						icon: Icon(Icons.search),
						onPressed: () {
						
						},
					)
				],
				elevation: 5,
				backgroundColorStart: Color.fromRGBO(39, 105, 255, 1),
				backgroundColorEnd: Color.fromRGBO(24, 185, 255, 1),
				bottom: TabBar(
//					isScrollable: true,
					tabs: <Widget>[
						Tab(text: "Favorites",),
						Tab(text: "Trending",),
						Tab(text: "Recommended",)
					],
					indicatorColor: Colors.white,
					indicatorSize: TabBarIndicatorSize.label,
				),
			),
			drawer: Drawer(
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
			),
			body: TabBarView(
				children: <Widget>[
					FavoritesScreen(),
					TrendingScreen(),
					RecommendedScreen()
				],
			)
		);
  	}
}