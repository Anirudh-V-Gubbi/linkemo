import 'package:hive_flutter/hive_flutter.dart';
import 'package:linkemo/core/strings.dart';
import 'package:linkemo/features/home/data/model/link_details_model.dart';

class LocalStorage {
  Future<List<LinkDetailsModel>> getAllLinkDetails() async{
    var box = await Hive.openBox<LinkDetailsModel>(kAllLinkDetails);
    return box.values.toList();
  }

  Future<void> storeLinkDetails(LinkDetailsModel linkDetailsModel) async{
    var box = await Hive.openBox(kAllLinkDetails);
    await box.add(linkDetailsModel);
    return Future.value();
  }
}