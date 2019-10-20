import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChannelCard extends StatelessWidget {
	
	final Map<String, Object> planet;
	
	ChannelCard(this.planet);
	
	@override
  	Widget build(BuildContext context) {
    	return Container(
			margin: EdgeInsets.only(bottom: 16),
			child: Stack(
				alignment: Alignment.topLeft,
				children: <Widget>[
					Card(
						elevation: 5,
						margin: EdgeInsets.only(left: 50),
						color: Color.fromRGBO(51, 48, 96, 1),
						child: Container(
							padding: EdgeInsets.only(top: 16, left: 70, bottom: 16, right: 16),
							child: Column(
								crossAxisAlignment: CrossAxisAlignment.start,
								children: <Widget>[
									Text(planet["name"], style: TextStyle(
										fontSize: 24,
										fontWeight: FontWeight.bold
									),),
									Text(planet["description"], style: TextStyle(
										color: Colors.white70
									),),
									Container(
										margin: EdgeInsets.only(top: 10, bottom: 20),
										color: Colors.lightBlueAccent,
										width: 50,
										height: 3,
									),
									Row(
										mainAxisAlignment: MainAxisAlignment.spaceBetween,
										children: <Widget>[
											Row(
												children: <Widget>[
													Icon(Icons.people),
													Container(width: 10,),
													Text(planet['nbPeopleInside'].toString())
												],
											),
											Row(
												children: <Widget>[
													Icon(Icons.subscriptions),
													Container(width: 10,),
													Text(planet['nbPeopleSubscribe'].toString())
												],
											),
										],
									)
								],
							),
						)
					),
					Container(
						margin: EdgeInsets.only(top: 15),
						child: Image.network(
							planet["image"],
							width: 100,
							height: 100,
						),
					)
				],
			),
		);
  	}
}