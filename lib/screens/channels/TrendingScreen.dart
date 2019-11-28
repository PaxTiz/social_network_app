import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:social_network/api/controllers/ChannelController.dart';
import 'package:social_network/api/models/Channel.dart';
import 'package:social_network/components/ChannelCard.dart';
import 'package:social_network/components/EmptyComponent.dart';
import 'package:social_network/components/SpecialChannelCard.dart';

class TrendingScreen extends StatelessWidget {
	
	static final ChannelController channelController = ChannelController();
	final channels = channelController.index();

	@override
  	Widget build(BuildContext context) {
    	return Container(
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
										description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper fringilla nisi et porta. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut euismod elit id orci mattis consequat",
									)
								],
							),
						),
						Flexible(
							child: FutureBuilder(
								future: channels,
								builder: (context, snapshot) {
									if(snapshot.data != null && snapshot.data.length > 0) {
										return ListView.builder(
											shrinkWrap: true,
											itemCount: (snapshot.data.length != 0) ? snapshot.data.length : 0,
											itemBuilder: (context, i) {
												Channel channel = snapshot.data[i];
												return ChannelCard(channel);
											},
										);
									}
									
									return Align(
										alignment: Alignment.topCenter,
										child: EmptyComponent(message: "Aucun salon",),
									);
								},
							),
						)
					],
				),
			)
		);
  	}
}