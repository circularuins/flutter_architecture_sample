// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GraphqlApi _$GraphqlApiFromJson(Map<String, dynamic> json) {
  return GraphqlApi()
    ..folders = (json['folders'] as List)
        ?.map((e) =>
            e == null ? null : Folder.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..knowledges = (json['knowledges'] as List)
        ?.map((e) =>
            e == null ? null : Knowledge.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$GraphqlApiToJson(GraphqlApi instance) =>
    <String, dynamic>{
      'folders': instance.folders?.map((e) => e?.toJson())?.toList(),
      'knowledges': instance.knowledges?.map((e) => e?.toJson())?.toList(),
    };

Folder _$FolderFromJson(Map<String, dynamic> json) {
  return Folder()
    ..childrenIds =
        (json['childrenIds'] as List)?.map((e) => e as String)?.toList()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..parentId = json['parentId'] as String;
}

Map<String, dynamic> _$FolderToJson(Folder instance) => <String, dynamic>{
      'childrenIds': instance.childrenIds,
      'id': instance.id,
      'name': instance.name,
      'parentId': instance.parentId,
    };

Knowledge _$KnowledgeFromJson(Map<String, dynamic> json) {
  return Knowledge()
    ..folderId = json['folderId'] as String
    ..id = json['id'] as String
    ..training = json['training'] == null
        ? null
        : Training.fromJson(json['training'] as Map<String, dynamic>)
    ..post = json['post'] == null
        ? null
        : Post.fromJson(json['post'] as Map<String, dynamic>)
    ..type = _$enumDecodeNullable(_$KnowledgeTypeEnumEnumMap, json['type'])
    ..user = json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>);
}

Map<String, dynamic> _$KnowledgeToJson(Knowledge instance) => <String, dynamic>{
      'folderId': instance.folderId,
      'id': instance.id,
      'training': instance.training?.toJson(),
      'post': instance.post?.toJson(),
      'type': _$KnowledgeTypeEnumEnumMap[instance.type],
      'user': instance.user?.toJson(),
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$KnowledgeTypeEnumEnumMap = {
  KnowledgeTypeEnum.training: 'training',
  KnowledgeTypeEnum.post: 'post',
};

Training _$TrainingFromJson(Map<String, dynamic> json) {
  return Training()
    ..assignmentDescription = json['assignmentDescription'] as String
    ..audios = (json['audios'] as List)
        ?.map(
            (e) => e == null ? null : Audio.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..description = json['description'] as String
    ..id = json['id'] as String
    ..images = (json['images'] as List)
        ?.map(
            (e) => e == null ? null : Image.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..isAssignmentAttached = json['isAssignmentAttached'] as bool
    ..name = json['name'] as String
    ..pdfs = (json['pdfs'] as List)
        ?.map((e) => e == null ? null : Pdf.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..processingStatus = json['processingStatus'] as String
    ..videos = (json['videos'] as List)
        ?.map(
            (e) => e == null ? null : Video.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$TrainingToJson(Training instance) => <String, dynamic>{
      'assignmentDescription': instance.assignmentDescription,
      'audios': instance.audios?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'id': instance.id,
      'images': instance.images?.map((e) => e?.toJson())?.toList(),
      'isAssignmentAttached': instance.isAssignmentAttached,
      'name': instance.name,
      'pdfs': instance.pdfs?.map((e) => e?.toJson())?.toList(),
      'processingStatus': instance.processingStatus,
      'videos': instance.videos?.map((e) => e?.toJson())?.toList(),
    };

Audio _$AudioFromJson(Map<String, dynamic> json) {
  return Audio()
    ..audioUrl = json['audioUrl'] as String
    ..id = json['id'] as String
    ..isProcessingSucceeded = json['isProcessingSucceeded'] as bool
    ..originalFilename = json['originalFilename'] as String;
}

Map<String, dynamic> _$AudioToJson(Audio instance) => <String, dynamic>{
      'audioUrl': instance.audioUrl,
      'id': instance.id,
      'isProcessingSucceeded': instance.isProcessingSucceeded,
      'originalFilename': instance.originalFilename,
    };

Image _$ImageFromJson(Map<String, dynamic> json) {
  return Image()
    ..id = json['id'] as String
    ..imageUrl = json['imageUrl'] as String
    ..thumbnailUrl = json['thumbnailUrl'] as String;
}

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'thumbnailUrl': instance.thumbnailUrl,
    };

Pdf _$PdfFromJson(Map<String, dynamic> json) {
  return Pdf()
    ..id = json['id'] as String
    ..originalFilename = json['originalFilename'] as String
    ..pdfUrl = json['pdfUrl'] as String;
}

Map<String, dynamic> _$PdfToJson(Pdf instance) => <String, dynamic>{
      'id': instance.id,
      'originalFilename': instance.originalFilename,
      'pdfUrl': instance.pdfUrl,
    };

Video _$VideoFromJson(Map<String, dynamic> json) {
  return Video()
    ..id = json['id'] as String
    ..isProcessingSucceeded = json['isProcessingSucceeded'] as bool
    ..thumbnailUrl = json['thumbnailUrl'] as String
    ..videoUrls =
        (json['videoUrls'] as List)?.map((e) => e as String)?.toList();
}

Map<String, dynamic> _$VideoToJson(Video instance) => <String, dynamic>{
      'id': instance.id,
      'isProcessingSucceeded': instance.isProcessingSucceeded,
      'thumbnailUrl': instance.thumbnailUrl,
      'videoUrls': instance.videoUrls,
    };

Post _$PostFromJson(Map<String, dynamic> json) {
  return Post()..id = json['id'] as String;
}

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'id': instance.id,
    };

User _$UserFromJson(Map<String, dynamic> json) {
  return User()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..invitationAcceptedAt = json['invitationAcceptedAt']
    ..thumbnailUrl = json['thumbnailUrl'] as String;
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'invitationAcceptedAt': instance.invitationAcceptedAt,
      'thumbnailUrl': instance.thumbnailUrl,
    };
