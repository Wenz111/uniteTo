import 'dart:convert';

dynamic jsonDecode(String data) async {
  return await json.decode(data);
}
