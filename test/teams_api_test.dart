//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:lab5e/api.dart';
import 'package:test/test.dart';


/// tests for TeamsApi
void main() {
  final instance = TeamsApi();

  group('tests for TeamsApi', () {
    // Accept invite
    //
    // Accept an invite from another user. This will add the currently logged in user to the team as a regular memeber. When the invite is accepted it is removed from the team's invites and cannot be reused.
    //
    //Future<Team> userAcceptInvite(AcceptInviteRequest body) async
    test('test userAcceptInvite', () async {
      // TODO
    });

    // Create team
    //
    //Future<Team> userCreateTeam(Team body) async
    test('test userCreateTeam', () async {
      // TODO
    });

    // Delete invite
    //
    // Delete an invite created earlier. You must be an administrator of the team to perform this action
    //
    //Future<Object> userDeleteInvite(String teamId, String code) async
    test('test userDeleteInvite', () async {
      // TODO
    });

    // Remove member
    //
    // Remove a member from the team. You must be an administrator to do this. You can't remove yourself from the team.
    //
    //Future<Member> userDeleteMember(String teamId, String userId) async
    test('test userDeleteMember', () async {
      // TODO
    });

    // Remove team
    //
    // Update the team. You must be an administrator of the team to edit it.
    //
    //Future<Team> userDeleteTeam(String teamId) async
    test('test userDeleteTeam', () async {
      // TODO
    });

    // Generate invite
    //
    // Update the team. You must be an administrator of the team to edit it.
    //
    //Future<Invite> userGenerateInvite(String teamId, InviteRequest body) async
    test('test userGenerateInvite', () async {
      // TODO
    });

    // List invites
    //
    // Update the team. You must be an administrator of the team to edit it.
    //
    //Future<InviteList> userListInvites(String teamId) async
    test('test userListInvites', () async {
      // TODO
    });

    // List teams
    //
    // Update the team. You must be an administrator of the team to edit it.
    //
    //Future<TeamList> userListTeams() async
    test('test userListTeams', () async {
      // TODO
    });

    // Retrieve invite
    //
    // Read a single invite from the team's set of non-redeemed invites.
    //
    //Future<Invite> userRetrieveInvite(String teamId, String code) async
    test('test userRetrieveInvite', () async {
      // TODO
    });

    // Retrieve member
    //
    //Future<Member> userRetrieveMember(String teamId, String userId) async
    test('test userRetrieveMember', () async {
      // TODO
    });

    // Retrieve team
    //
    //Future<Team> userRetrieveTeam(String teamId) async
    test('test userRetrieveTeam', () async {
      // TODO
    });

    // List members
    //
    //Future<MemberList> userRetrieveTeamMembers(String teamId) async
    test('test userRetrieveTeamMembers', () async {
      // TODO
    });

    // Update member
    //
    // You must be an administrator of the team to update member settings
    //
    //Future<Member> userUpdateMember(String teamId, String userId, Member body) async
    test('test userUpdateMember', () async {
      // TODO
    });

    // Update team
    //
    // Update the team. You must be an administrator of the team to edit it.
    //
    //Future<Team> userUpdateTeam(String teamId, Team body) async
    test('test userUpdateTeam', () async {
      // TODO
    });

  });
}
