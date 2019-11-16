import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:social_network/components/ChannelCard.dart';
import 'package:social_network/components/SpecialChannelCard.dart';
import 'package:social_network/planets.dart';

class TrendingScreen extends StatelessWidget {

	@override
  	Widget build(BuildContext context) {
    	return Container(
			color: Color.fromRGBO(27, 31, 58, 1),

			width: MediaQuery.of(context).size.width,
			height: MediaQuery.of(context).size.height,
			padding: EdgeInsets.all(20),
			
			child: SingleChildScrollView(
				child: Column(
					mainAxisSize: MainAxisSize.min,
					children: <Widget>[
						SizedBox(
							height: 200,
							child: ListView(
								physics: ClampingScrollPhysics(),
								shrinkWrap: true,
								scrollDirection: Axis.horizontal,
								children: <Widget>[
									SpecialChannelCard(
										title: "Mars",
										image: "mars.png",
										description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper fringilla nisi et porta. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut euismod elit id orci mattis consequat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.",
									),
									SpecialChannelCard(
										title: "Jupyter",
										image: "space.jpg",
										description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper fringilla nisi et porta. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut euismod elit id orci mattis consequat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.",
									)
								],
							),
						),
						Flexible(
							child: ListView.builder(
								physics: NeverScrollableScrollPhysics(),
								shrinkWrap: true,
								itemCount: planets.length,
								itemBuilder: (ctx, i) {
									return ChannelCard(planets[i]);
								}
							),
						)
					],
				),
			)
		);
  	}
}