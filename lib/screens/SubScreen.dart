import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:social_network/components/ChannelCard.dart';
import 'package:social_network/planets.dart';

class SubScreen extends StatelessWidget {

	@override
	Widget build(BuildContext context) {
		return Container(
			child: Container(
				decoration: BoxDecoration(
					gradient: LinearGradient(
						colors: [Color.fromRGBO(34, 39, 54, 1), Color.fromRGBO(21, 21, 53, 1)],
						begin: AlignmentDirectional.topCenter,
						end: AlignmentDirectional.bottomCenter
					)
				),
				
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