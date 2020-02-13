// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
import './coercers.dart';
part 'graphql_api.g.dart';

@JsonSerializable(explicitToJson: true)
class FoldersData with EquatableMixin {
  FoldersData();

  factory FoldersData.fromJson(Map<String, dynamic> json) =>
      _$FoldersDataFromJson(json);

  List<Folder> folders;

  @override
  List<Object> get props => [folders];
  Map<String, dynamic> toJson() => _$FoldersDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Folder with EquatableMixin {
  Folder();

  factory Folder.fromJson(Map<String, dynamic> json) => _$FolderFromJson(json);

  List<String> childrenIds;

  String id;

  String name;

  String parentId;

  @override
  List<Object> get props => [childrenIds, id, name, parentId];
  Map<String, dynamic> toJson() => _$FolderToJson(this);
}

class FoldersDataQuery extends GraphQLQuery<FoldersData, JsonSerializable> {
  FoldersDataQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'FoldersData'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'folders'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'childrenIds'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'parentId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'FoldersData';

  @override
  List<Object> get props => [document, operationName];
  @override
  FoldersData parse(Map<String, dynamic> json) => FoldersData.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class BundlesData with EquatableMixin {
  BundlesData();

  factory BundlesData.fromJson(Map<String, dynamic> json) =>
      _$BundlesDataFromJson(json);

  List<Bundle> bundles;

  @override
  List<Object> get props => [bundles];
  Map<String, dynamic> toJson() => _$BundlesDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Bundle with EquatableMixin {
  Bundle();

  factory Bundle.fromJson(Map<String, dynamic> json) => _$BundleFromJson(json);

  List<String> foldersIds;

  String id;

  String name;

  @override
  List<Object> get props => [foldersIds, id, name];
  Map<String, dynamic> toJson() => _$BundleToJson(this);
}

class BundlesDataQuery extends GraphQLQuery<BundlesData, JsonSerializable> {
  BundlesDataQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'BundlesData'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'bundles'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'foldersIds'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'BundlesData';

  @override
  List<Object> get props => [document, operationName];
  @override
  BundlesData parse(Map<String, dynamic> json) => BundlesData.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class KnowledgesData with EquatableMixin {
  KnowledgesData();

  factory KnowledgesData.fromJson(Map<String, dynamic> json) =>
      _$KnowledgesDataFromJson(json);

  List<Knowledge> knowledges;

  @override
  List<Object> get props => [knowledges];
  Map<String, dynamic> toJson() => _$KnowledgesDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Knowledge with EquatableMixin {
  Knowledge();

  factory Knowledge.fromJson(Map<String, dynamic> json) =>
      _$KnowledgeFromJson(json);

  String folderId;

  String id;

  Training training;

  Post post;

  KnowledgeTypeEnum type;

  User user;

  @override
  List<Object> get props => [folderId, id, training, post, type, user];
  Map<String, dynamic> toJson() => _$KnowledgeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Training with EquatableMixin {
  Training();

  factory Training.fromJson(Map<String, dynamic> json) =>
      _$TrainingFromJson(json);

  String assignmentDescription;

  List<Audio> audios;

  String description;

  String id;

  List<Image> images;

  bool isAssignmentAttached;

  String name;

  List<Pdf> pdfs;

  String processingStatus;

  List<Video> videos;

  @override
  List<Object> get props => [
        assignmentDescription,
        audios,
        description,
        id,
        images,
        isAssignmentAttached,
        name,
        pdfs,
        processingStatus,
        videos
      ];
  Map<String, dynamic> toJson() => _$TrainingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Audio with EquatableMixin {
  Audio();

  factory Audio.fromJson(Map<String, dynamic> json) => _$AudioFromJson(json);

  String audioUrl;

  String id;

  bool isProcessingSucceeded;

  String originalFilename;

  @override
  List<Object> get props =>
      [audioUrl, id, isProcessingSucceeded, originalFilename];
  Map<String, dynamic> toJson() => _$AudioToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Image with EquatableMixin {
  Image();

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

  String id;

  String imageUrl;

  String thumbnailUrl;

  @override
  List<Object> get props => [id, imageUrl, thumbnailUrl];
  Map<String, dynamic> toJson() => _$ImageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Pdf with EquatableMixin {
  Pdf();

  factory Pdf.fromJson(Map<String, dynamic> json) => _$PdfFromJson(json);

  String id;

  String originalFilename;

  String pdfUrl;

  @override
  List<Object> get props => [id, originalFilename, pdfUrl];
  Map<String, dynamic> toJson() => _$PdfToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Video with EquatableMixin {
  Video();

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);

  String id;

  bool isProcessingSucceeded;

  String thumbnailUrl;

  List<String> videoUrls;

  @override
  List<Object> get props =>
      [id, isProcessingSucceeded, thumbnailUrl, videoUrls];
  Map<String, dynamic> toJson() => _$VideoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Post with EquatableMixin {
  Post();

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  String id;

  @override
  List<Object> get props => [id];
  Map<String, dynamic> toJson() => _$PostToJson(this);
}

@JsonSerializable(explicitToJson: true)
class User with EquatableMixin {
  User();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  String id;

  String name;

  @JsonKey(
      fromJson: fromGraphQLISO8601DateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLISO8601DateTime)
  DateTime invitationAcceptedAt;

  String thumbnailUrl;

  @override
  List<Object> get props => [id, name, invitationAcceptedAt, thumbnailUrl];
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

enum KnowledgeTypeEnum {
  training,
  post,
}

class KnowledgesDataQuery
    extends GraphQLQuery<KnowledgesData, JsonSerializable> {
  KnowledgesDataQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'KnowledgesData'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'knowledges'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'folderId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'training'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'assignmentDescription'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'audios'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'audioUrl'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'isProcessingSucceeded'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'originalFilename'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ])),
                      FieldNode(
                          name: NameNode(value: 'description'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'images'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'imageUrl'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'thumbnailUrl'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ])),
                      FieldNode(
                          name: NameNode(value: 'isAssignmentAttached'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'name'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'pdfs'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'originalFilename'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'pdfUrl'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ])),
                      FieldNode(
                          name: NameNode(value: 'processingStatus'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'videos'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'isProcessingSucceeded'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'thumbnailUrl'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'videoUrls'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ]))
                    ])),
                FieldNode(
                    name: NameNode(value: 'post'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ])),
                FieldNode(
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'user'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'name'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'invitationAcceptedAt'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'thumbnailUrl'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'KnowledgesData';

  @override
  List<Object> get props => [document, operationName];
  @override
  KnowledgesData parse(Map<String, dynamic> json) =>
      KnowledgesData.fromJson(json);
}
