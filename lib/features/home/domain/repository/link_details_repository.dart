import 'package:dartz/dartz.dart';
import 'package:linkemo/features/home/domain/entity/link_details.dart';

abstract class LinkDetailsRepository {
  Future<Either<String, List<LinkDetails>>> getAllLinkDetails();
  Future<void> storeLinkDetails(LinkDetails linkDetails);
}