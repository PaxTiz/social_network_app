import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpecialChannelCard extends StatelessWidget {
	
	final String image, title, description;
	
	SpecialChannelCard({@required this.image, @required this.title, @required this.description});
	
  	@override
  	Widget build(BuildContext context) {
    	return GestureDetector(
			child: Container(
				width: MediaQuery.of(context).size.width - 40,
				margin: EdgeInsets.only(bottom: 20),
				padding: EdgeInsets.all(20),
				alignment: Alignment.topLeft,
				decoration: BoxDecoration(
					image: DecorationImage(
						image: AssetImage("assets/images/planets/" + image),
						fit: BoxFit.cover
					),
					borderRadius: BorderRadius.circular(20)
				),
				child: Center(
					child: Column(
						mainAxisSize: MainAxisSize.min,
						children: <Widget>[
							Text(title, style: TextStyle(
								color: Colors.white,
								fontWeight: FontWeight.bold,
								fontSize: 24,
							),),
							Text(description,
								style: TextStyle(
									color: Colors.white,
								),
								textAlign: TextAlign.center,
							)
						],
					),
				)
			),
		);
  	}
	
}