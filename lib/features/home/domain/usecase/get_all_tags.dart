import 'package:dartz/dartz.dart';
import 'package:linkemo/features/home/domain/entity/tag.dart';
import 'package:linkemo/features/home/domain/repository/tags_repository.dart';

class GetAllTags {
  final TagsRepository tagsRepository;

  GetAllTags({required this.tagsRepository});

  Future<Either<String, List<Tag>>> call() async{
    return (await tagsRepository.getAllTags());
  }
}