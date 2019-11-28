import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmptyComponent extends StatelessWidget {
	
	final String message;
	EmptyComponent({@required this.message});
	
  	@override
  	Widget build(BuildContext context) {
		return Container(
			height: 100,
			decoration: BoxDecoration(
				borderRadius: BorderRadius.circular(20),
				color: Color.fromRGBO(51, 48, 96, 1),
			),
			child: Center(
				child: Text(
					message.toUpperCase(),
					style: TextStyle(
						color: Colors.white,
						fontWeight: FontWeight.bold,
					),
				),
			),
		);
  	}
	
}