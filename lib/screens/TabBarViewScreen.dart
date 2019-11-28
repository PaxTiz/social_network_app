import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:social_network/screens/channels/TrendingScreen.dart';
import 'package:social_network/screens/channels/RecommendedScreen.dart';
import 'package:social_network/screens/channels/SubScreen.dart';
import 'package:social_network/utils/AppBar.dart';
import 'package:social_network/utils/DrawerCustom.dart';

class TabBarViewScreen extends StatelessWidget {
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBarCustom(),
			drawer: DrawerCustom(),
			body: TabBarView(
				physics: ClampingScrollPhysics(),
				children: <Widget>[
					SubScreen(),
					TrendingScreen(),
					RecommendedScreen()
				],
				dragStartBehavior: DragStartBehavior.start,
			)
		);
	}
	
}