import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
	
	final PageController pageController = new PageController();
	
	@override
  	Widget build(BuildContext context) {
    	return PageIndicatorContainer(
			pageView: PageView(
				controller: pageController,
				children: <Widget>[
					Container(
						color: Colors.blue,
						child: Stack(
							children: <Widget>[
								Positioned(
									top: 50,
									right: 50,
									child: RaisedButton(
										child: Text("Passer l'introduction"),
										onPressed: () {
										
										},
									),
								),
								Center(
									child: Text("Yo la mifa", style: Theme.of(context).textTheme.title,),
								),
							],
						),
					),
					Container(
						color: Colors.red,
					),
					Container(
						color: Colors.green,
					),
				],
			),
			align: IndicatorAlign.bottom,
			length: 3,
			indicatorSpace: 20,
			padding: EdgeInsets.only(bottom: 50),
			indicatorColor: Colors.white,
			indicatorSelectorColor: Colors.black,
			shape: IndicatorShape.circle(size: 12),
		);
	}
}