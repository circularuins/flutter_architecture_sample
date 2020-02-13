import 'dart:async';

import 'package:graphql_flutter/graphql_flutter.dart';

class RemoteBloc {
  final _valueController = StreamController<List<Map<String, dynamic>>>();
  Stream<List<Map<String, dynamic>>> get value => _valueController.stream;

  static HttpLink link = HttpLink(
    uri: 'https://soeasy-work-graphql-for-aopipw.herokuapp.com/graphql',
  );
  GraphQLClient client = GraphQLClient(
    cache: InMemoryCache(),
    link: link,
  );

  getData() async {
    final QueryResult data = await client.query(
      QueryOptions(
        document: '''
        query {
            knowledges {
                id
            }
        }''',
      ),
    );

    final List<Map<String, dynamic>> ids = data.data['knowledges'].cast<Map<String, dynamic>>();

    _valueController.sink.add(ids);
  }
}
