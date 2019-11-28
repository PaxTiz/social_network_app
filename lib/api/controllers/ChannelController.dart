import 'package:social_network/api/models/Channel.dart';

class ChannelController {
	
	Future<List<Channel>> index() {
		return Channel.findAll();
	}
	
}