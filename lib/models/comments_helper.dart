import 'package:http/http.dart' as http;
import 'package:new_project/models/commmets.dart';

class CommentsHelper {
  Future<List<Comments>?> getComments() async {
    var respose = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/comments'),
    );

    if (respose.statusCode == 200) {
      var json = respose.body;
      return commentsFromJson(json);
    }
  }
}
