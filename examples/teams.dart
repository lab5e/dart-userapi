import 'dart:io';

import 'package:lab5e/api.dart';

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
  var teamsApi = TeamsApi(client);
  teamsApi
      .userListTeams()
      .then((value) => displayTeamList(value))
      .catchError((error) => print('Got error $error'))
      .whenComplete(() => exit(0));
}

// Display the list of teams on screen
void displayTeamList(TeamList list) {
  for (final team in list.teams) {
    print('Team ID: ${team.teamId}');
    print('\tTags:');
    for (final key in team.tags.keys) {
      print('\t\t$key: ${team.tags[key]}');
    }
    print('\tMembers:');
    for (final member in team.members) {
      print('\t\t${member.user.name} (${member.role})');
    }
  }
}
