//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:userapi/api.dart';
import 'package:test/test.dart';

// tests for Token
void main() {
  final instance = Token();

  group('test Token', () {
    // The resource of the token.  The token applies to the specified resource and any resources below this so the resource `/` applies to the root resource and any resource below the root resource. In the same manner `/collections` will apply to all collectins while `/collections/{id}` will apply to that particular collection.
    // String resource
    test('to test the property `resource`', () async {
      // TODO
    });

    // Write flag for token.  If this is set to `true` the token can be used for write operations in the API such as POST, DELETE and PATCH.
    // bool write
    test('to test the property `write`', () async {
      // TODO
    });

    // Use this in the `X-API-Token` header when using the API.
    // String token
    test('to test the property `token`', () async {
      // TODO
    });

    // Tags for the token.
    // Map<String, String> tags (default value: const {})
    test('to test the property `tags`', () async {
      // TODO
    });

    // The last time the token was used. Time in ms since epoch.
    // String lastUse
    test('to test the property `lastUse`', () async {
      // TODO
    });

    // String uses
    test('to test the property `uses`', () async {
      // TODO
    });


  });

}
