import 'package:linkemo/features/home/data/model/link_details_model.dart';

abstract class LinkDetailsLocalDatasource {
  Future<LinkDetailsModel> getAllLinkDetails();
  Future<void> storeLinkDetails(LinkDetailsModel linkDetails); 
}

class LinkDetailsLocalDatasourceImpl implements LinkDetailsLocalDatasource {
  @override
  Future<LinkDetailsModel> getAllLinkDetails() {
    // TODO: implement getAllLinkDetails
    throw UnimplementedError();
  }

  @override
  Future<void> storeLinkDetails(LinkDetailsModel linkDetails) {
    // TODO: implement storeLinkDetails
    throw UnimplementedError();
  }
  
}