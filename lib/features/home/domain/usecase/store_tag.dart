import 'package:linkemo/features/home/domain/entity/tag.dart';
import 'package:linkemo/features/home/domain/repository/tags_repository.dart';

class StoreTag {
  final TagsRepository tagsRepository;

  StoreTag({required this.tagsRepository});

  Future<void> call(Tag tag) async{
    await tagsRepository.storeTag(tag);
  }
}

