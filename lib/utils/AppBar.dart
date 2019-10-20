import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
	
	@override
	Widget build(BuildContext context) {
		return GradientAppBar(
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
		);
	}

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight * 2);
	
}