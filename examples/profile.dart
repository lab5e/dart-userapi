import 'dart:io';

import 'package:userapi/api.dart';

// A very simple example that pulls the user profile from api.lab5e.com and
// displays it on screen.
void main(List<String> args) {
  // Expect the first parameter to be the token
  final token = args[0];

  // Exit if there's no valid token on the command line
  if (token == '') {
    print('Needs a token parameter');
    exit(1);
  }

  // Create the API client
  var client = ApiClient();

  // Set the token parameter for the client.
  client.addDefaultHeader("X-API-Token", token);

  // Get the user profile from the API
  var profileApi = ProfileApi(client);
  profileApi
      .getUserProfile()
      .then((value) => displayProfile(value))
      .catchError((error) => print('Got error $error'))
      .whenComplete(() => exit(0));
}

void displayProfile(UserProfile value) {
  print('Your user ID is ${value.userId}');
  print('Your name is ${value.name}');
  print('Your avatar URL is ${value.avatarUrl}');
}
