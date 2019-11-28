import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_network/api/models/Channel.dart';
import 'package:social_network/screens/channels/ChannelDescriptionScreen.dart';

class ChannelCard extends StatelessWidget {
	
	final Channel channel;
	
	ChannelCard(this.channel);
	
	@override
  	Widget build(BuildContext context) {
    	return Container(
			margin: EdgeInsets.only(bottom: 16),
			child: GestureDetector(
				onTap: () {
					Navigator.push(context, MaterialPageRoute(
						builder: (context) => ChannelDescriptionScreen(channel)
					));
				},
				child: Container(
					decoration: BoxDecoration(
						borderRadius: BorderRadius.circular(20),
						color: Color.fromRGBO(51, 48, 96, 1),
					),
					child: Column(
						children: <Widget>[
							Container(
								margin: EdgeInsets.only(bottom: 10),
								child: Row(
									crossAxisAlignment: CrossAxisAlignment.start,
									children: <Widget>[
										Image.network(
											channel.image, width: 100, height: 80,
										),
										Expanded(
											child: Padding(
												padding: EdgeInsets.all(10),
												child: Column(
													crossAxisAlignment: CrossAxisAlignment.start,
													children: <Widget>[
														Text(channel.title, style: TextStyle(
															fontFamily: "Avenir Next Condensed",
															fontSize: 28,
															fontWeight: FontWeight.bold
														),),
														Text(channel.description, style: TextStyle(
															fontFamily: "Avenir Next"
														),)
													],
												),
											)
										)
									],
								),
							),
							Container(
								decoration: BoxDecoration(
									borderRadius: BorderRadius.circular(20),
									color: Color.fromRGBO(81, 86, 161, 1),
								),
								padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
								child: Row(
									mainAxisAlignment: MainAxisAlignment.spaceBetween,
									children: <Widget>[
										Row(
											children: <Widget>[
												Icon(Icons.people),
												Container(width: 5,),
												Text(channel.nbSubscribers.toString()),
											],
										),
										Row(
											children: <Widget>[
												Icon(Icons.date_range),
												Container(width: 5,),
												Text("Not yet message")
											],
										)
									],
								),
							)
						],
					),
				)
			)
		);
  	}
}