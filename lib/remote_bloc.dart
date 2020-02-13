import 'dart:async';

import 'package:architecture_test/graphql_api.dart';
import 'package:artemis/artemis.dart';
import 'package:gql_dedupe_link/gql_dedupe_link.dart';
import 'package:gql_http_link/gql_http_link.dart' as gfl_http_link;
import 'package:gql_link/gql_link.dart' as gfl_link;

class RemoteBloc {
  final _valueController = StreamController<List<Folder>>();
  Stream<List<Folder>> get value => _valueController.stream;

  static final l = gfl_link.Link.from([
    DedupeLink(),
    gfl_http_link.HttpLink(
      'https://soeasy-work-graphql-for-aopipw.herokuapp.com/graphql',
      defaultHeaders: {},
    ),
  ]);
  final client = ArtemisClient.fromLink(l);

  getData() async {
    final query = FoldersDataQuery();
    final resp = await client.execute(query);
    final data = resp.data.folders;

    _valueController.sink.add(data);
  }
}
