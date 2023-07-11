import 'package:hive_flutter/hive_flutter.dart';
import 'package:linkemo/core/strings.dart';
import 'package:linkemo/features/home/data/model/link_details_model.dart';
import 'package:linkemo/features/home/data/model/tag_model.dart';

class LocalStorage {
  Future<List<LinkDetailsModel>> getAllLinkDetails() async{
    var box = await Hive.openBox<LinkDetailsModel>(kAllLinkDetails);
    return box.values.toList();
  }

  Future<void> storeLinkDetails(LinkDetailsModel linkDetailsModel) async{
    var box = await Hive.openBox<LinkDetailsModel>(kAllLinkDetails);
    await box.add(linkDetailsModel);
    return Future.value();
  }

  Future<List<TagModel>> getAllTags() async{
    var box = await Hive.openBox<TagModel>(kAlltags);
    return box.values.toList();
  }

  Future<void> storeTag(TagModel tag) async{
    var box = await Hive.openBox<TagModel>(kAlltags);
    await box.add(tag);
    return Future.value();
  }
}