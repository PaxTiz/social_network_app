import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Channel {
	
	final int id;
	final String title;
	final String description;
	final int nbSubscribers;
	final String image;
	
	Channel(this.id, this.title, this.description, this.nbSubscribers, this.image);
	
	static Future<List<Channel>> findAll() async {
		List<Channel> channels = [];
		
		var datas = await http.get("http://localhost:3000");
		if(datas.statusCode == 200) {
			var jsonResp = convert.jsonDecode(datas.body);
			for(var c in jsonResp) {
				channels.add(
					Channel(
						c["id"],
						c["title"],
						c["description"],
						c["nbSubscribers"],
						c["image"]
					)
				);
			}
		}
		
		return channels;
	}

	
}