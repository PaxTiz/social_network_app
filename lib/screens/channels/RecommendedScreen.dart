import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_network/api/controllers/ChannelController.dart';
import 'package:social_network/api/models/Channel.dart';
import 'package:social_network/components/ChannelCard.dart';
import 'package:social_network/components/EmptyComponent.dart';

class RecommendedScreen extends StatelessWidget {
	
	static final ChannelController channelController = ChannelController();
	final channels = channelController.index();
	
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
				
//				child: ListView.builder(
//					shrinkWrap: true,
//					itemCount: channels.length,
//					itemBuilder: (BuildContext ctx, int i) {
//						return ChannelCard(channels.elementAt(i));
//					},
//				),
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
		);
	}
}