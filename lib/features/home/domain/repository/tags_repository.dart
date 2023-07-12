import 'package:dartz/dartz.dart';
import 'package:linkemo/features/home/domain/entity/tag.dart';

abstract class TagsRepository {
  Future<Either<String, List<Tag>>> getAllTags();
  Future<void> storeTags(List<Tag> tags);
}