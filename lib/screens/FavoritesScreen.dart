import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:social_network/components/ChannelCard.dart';
import 'package:social_network/planets.dart';

class FavoritesScreen extends StatelessWidget {

	@override
  	Widget build(BuildContext context) {
    	return Container(
			child: Container(
				color: Color.fromRGBO(27, 31, 58, 1),
				
				width: MediaQuery.of(context).size.width,
				height: MediaQuery.of(context).size.height,
				padding: EdgeInsets.all(20),
				
				child: ListView.builder(
					shrinkWrap: true,
					itemCount: planets.length,
					itemBuilder: (BuildContext ctx, int i) {
						return ChannelCard(planets[i]);
					},
				),
			)
		);
  	}
}