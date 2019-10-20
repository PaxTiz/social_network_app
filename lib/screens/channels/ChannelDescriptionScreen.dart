import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:social_network/components/ChannelDescriptionCard.dart';
import 'package:social_network/utils/DrawerCustom.dart';

// ignore: must_be_immutable
class ChannelDescriptionScreen extends StatelessWidget {
	
	String channelName;
	ChannelDescriptionScreen(this.channelName);
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: Color.fromRGBO(27, 31, 58, 1),
			appBar: GradientAppBar(
				title: Text("Rejoindre un salon", style: Theme.of(context).textTheme.title,),
				leading: GestureDetector(
					child: Icon(Icons.keyboard_arrow_left),
					onTap: () => Navigator.pop(context),
				),
				centerTitle: false,
				elevation: 5,
				backgroundColorStart: Color.fromRGBO(39, 105, 255, 1),
				backgroundColorEnd: Color.fromRGBO(24, 185, 255, 1),
			),
			drawer: DrawerCustom(),
			body: Container(
				child: ChannelDescriptionCard(channelName),
			)
		);
	}
	
}