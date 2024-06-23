import 'dart:convert';
import 'package:http/http.dart' as http;

//Auth token we will use to generate a meeting and connect to it
String token =
    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcGlrZXkiOiJiMDFiNmQ5Mi00YzQyLTQ1ZGQtYmViZS1mZjlhNTljOGY2YzQiLCJwZXJtaXNzaW9ucyI6WyJhbGxvd19qb2luIl0sImlhdCI6MTcxOTE1MzMzMywiZXhwIjoxNzE5NzU4MTMzfQ.w3iEP4r_RDmtkQCW6O_qwBoStJjbScu2UVUJdZ8kXYw";

// API call to create meeting
Future<String> createMeeting() async {
  final http.Response httpResponse = await http.post(
    Uri.parse("https://api.videosdk.live/v2/rooms"),
    headers: {'Authorization': token},
  );

//Destructuring the roomId from the response
  return json.decode(httpResponse.body)['roomId'];
}
