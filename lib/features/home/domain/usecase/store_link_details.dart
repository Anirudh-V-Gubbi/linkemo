import 'package:linkemo/features/home/domain/entity/link_details.dart';
import 'package:linkemo/features/home/domain/repository/link_details_repository.dart';

class StoreLinkDetails {
  final LinkDetailsRepository linkDetailsRepository;

  StoreLinkDetails({required this.linkDetailsRepository});

  Future<void> call(LinkDetails linkDetails) async{
    await linkDetailsRepository.storeLinkDetails(linkDetails);
  }
}

