import 'package:linkemo/core/local_storage.dart';
import 'package:linkemo/features/home/data/model/link_details_model.dart';

abstract class LinkDetailsLocalDatasource {
  Future<List<LinkDetailsModel>> getAllLinkDetails();
  Future<void> storeLinkDetails(LinkDetailsModel linkDetails); 
}

class LinkDetailsLocalDatasourceImpl implements LinkDetailsLocalDatasource {
  final LocalStorage localStorage;

  LinkDetailsLocalDatasourceImpl({required this.localStorage});

  @override
  Future<List<LinkDetailsModel>> getAllLinkDetails() async{
    return (await localStorage.getAllLinkDetails());
  }

  @override
  Future<void> storeLinkDetails(LinkDetailsModel linkDetails) async{
    return (await localStorage.storeLinkDetails(linkDetails));
  }
  
}