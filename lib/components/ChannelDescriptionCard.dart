import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:social_network/api/models/Channel.dart';

class ChannelDescriptionCard extends StatelessWidget {
	
	final Channel channel;
	ChannelDescriptionCard(this.channel);
	
  	@override
  	Widget build(BuildContext context) {
		return Container(
			
			height: MediaQuery.of(context).size.height,
			decoration: BoxDecoration(
				gradient: LinearGradient(
					colors: [Color.fromRGBO(34, 39, 54, 1), Color.fromRGBO(21, 21, 53, 1)],
					begin: AlignmentDirectional.topCenter,
					end: AlignmentDirectional.bottomCenter
				)
			),
			
			child: SingleChildScrollView(
				child: Column(
//					mainAxisSize: MainAxisSize.min,
					children: <Widget>[
						Container(
							decoration: BoxDecoration(
								color: Color.fromRGBO(27, 31, 58, 1),
								image: DecorationImage(image: AssetImage("assets/images/planets/landing3.jpg"), fit: BoxFit.cover, alignment: Alignment.bottomCenter)
							),
							padding: EdgeInsets.only(left: 20, top: 50, right: 20, bottom: 20),
							width: MediaQuery.of(context).size.width,
							
							child: ConstrainedBox(
								constraints: BoxConstraints(
									minHeight: 1
								),
								child: Column(
									children: <Widget>[
										Row(
											children: <Widget>[
												GestureDetector(
													onTap: () {
														Navigator.pop(context);
													},
													child: Icon(Icons.arrow_back),
												),
												Container(width: 10,),
												Text(channel.title, style: TextStyle(
													fontSize: 22,
													fontWeight: FontWeight.bold,
													fontFamily: "Avenir Next Condensed"
												),)
											],
										),
										Container(height: 10,),
										Text(channel.description, style: TextStyle(
											fontFamily: "Avenir Neext"
										),),
									],
								),
							)
						),
						ListView(
							shrinkWrap: true,
							physics: NeverScrollableScrollPhysics(),
							children: <Widget>[
								Card(
									child: Text("Coucou"),
								)
							],
						),
					],
				),
				
			),
		);
	}
}