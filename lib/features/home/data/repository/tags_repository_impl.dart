import 'package:dartz/dartz.dart';
import 'package:linkemo/features/home/data/datasource/tags_local_ds.dart';
import 'package:linkemo/features/home/data/model/tag_model.dart';
import 'package:linkemo/features/home/domain/entity/tag.dart';
import 'package:linkemo/features/home/domain/repository/tags_repository.dart';

class TagsRepositoryImpl implements TagsRepository {
  final TagsLocalDataSource tagsLocalDataSource;

  TagsRepositoryImpl({required this.tagsLocalDataSource});

  @override
  Future<Either<String, List<TagModel>>> getAllTags() async{
    try {
      final tags = await tagsLocalDataSource.getAllTags();
      return right(tags);
    }
    catch(e) {
      return left(e.toString());
    }
  }

  @override
  Future<void> storeTag(Tag tag) async{
    await tagsLocalDataSource.storeTag(TagModel(
      name: tag.name
    ));
  }  
}