import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChannelDescriptionCard extends StatelessWidget {
	
	String channelName;
	ChannelDescriptionCard(this.channelName);
	
  	@override
  	Widget build(BuildContext context) {
		return Container(
			margin: EdgeInsets.all(20),
			child: Column(
				children: <Widget>[
					Row(
						mainAxisAlignment: MainAxisAlignment.spaceBetween,
						children: <Widget>[
							Text(channelName, style: Theme.of(context).textTheme.title,),
							RaisedButton(
								child: Text("Rejoindre"),
								onPressed: () {
								
								},
							),
						],
					),
					Container(
						color: Colors.white,
						padding: EdgeInsets.all(10),
						child: Row(
							mainAxisAlignment: MainAxisAlignment.spaceBetween,
							children: <Widget>[
								Row(
									children: <Widget>[
										Icon(Icons.check, color: Colors.green,),
										Text("1000 (Majorité des avis positifs)", style: TextStyle(color: Colors.green),)
									],
								),
								Row(
									children: <Widget>[
										Icon(Icons.subscriptions, color: Colors.blue,),
										Text("100000", style: TextStyle(color: Colors.blue),)
									],
								)
							],
						),
					),
					Container(height: 5,),
					Text(
						"In hac habitasse platea dictumst. Mauris pellentesque nibh ut nibh ornare aliquam. Praesent a elementum mi. Suspendisse convallis, quam et pretium tincidunt, lectus leo fermentum diam, sit amet consectetur nunc sem sit amet erat. Curabitur vel risus sit amet libero consequat cursus. Duis faucibus velit id nulla mollis faucibus. Nulla facilisi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus purus dui, fermentum nec nibh eget, tempor laoreet odio. Phasellus auctor neque id augue placerat, eget posuere orci commodo. Nam nisi ex, tempus nec ante vitae, tempus fringilla sapien. Vestibulum dolor felis, convallis et dui eu, semper dictum diam. Nunc aliquet augue nec massa rhoncus, ac eleifend neque bibendum. Vestibulum euismod ornare eros, ac consectetur ligula aliquet quis. Suspendisse semper nisi in ullamcorper pharetra.",
						textAlign: TextAlign.justify,
					)
				],
			),
		);
	}
}