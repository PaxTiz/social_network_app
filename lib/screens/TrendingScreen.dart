import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:social_network/components/ChannelCard.dart';

class TrendingScreen extends StatelessWidget {
	
	final images = [
		"https://cdn0.iconfinder.com/data/icons/flat-design-galaxy/1701/Dots1-512.png",
		"https://cdn0.iconfinder.com/data/icons/flat-design-galaxy/1701/Planets2-512.png",
		"https://cdn.iconscout.com/icon/premium/png-256-thumb/planet-290-815536.png",
		"https://cdn0.iconfinder.com/data/icons/flat-design-galaxy/1701/Dots2-512.png",
		"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_6i3I9fnNTD8kif5T7qWsIbm7l9be-UnEqdv1t3_Kd2dM_2ou",
		"https://cdn0.iconfinder.com/data/icons/flat-design-galaxy/1701/Saturn1-512.png"
	];
	
	final planets = [
		{
			"name": "Earth",
			"description": "This channel is about our so beautiful planet, the Earth !",
			"nbPeopleInside": 12,
			"nbPeopleSubscribe": 1000,
			"image": "https://cdn0.iconfinder.com/data/icons/flat-design-galaxy/1701/Dots1-512.png"
		}
	];
	
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