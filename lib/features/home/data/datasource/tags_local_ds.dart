import 'package:linkemo/core/local_storage.dart';
import 'package:linkemo/features/home/data/model/tag_model.dart';

abstract class TagsLocalDataSource {
  Future<List<TagModel>> getAllTags();
  Future<void> storeTag(TagModel tag); 
}

class TagsLocalDataSourceImpl implements TagsLocalDataSource {
  final LocalStorage localStorage;

  TagsLocalDataSourceImpl({required this.localStorage});

  @override
  Future<List<TagModel>> getAllTags() async{
    return (await localStorage.getAllTags());
  }

  @override
  Future<void> storeTag(TagModel tag) async{
    return (await localStorage.storeTag(tag));
  }
}