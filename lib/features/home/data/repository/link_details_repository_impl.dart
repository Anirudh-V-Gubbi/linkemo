import 'package:dartz/dartz.dart';
import 'package:linkemo/features/home/data/datasource/link_details_local_ds.dart';
import 'package:linkemo/features/home/data/model/link_details_model.dart';
import 'package:linkemo/features/home/data/model/tag_model.dart';
import 'package:linkemo/features/home/domain/entity/link_details.dart';
import 'package:linkemo/features/home/domain/repository/link_details_repository.dart';

class LinkDetailsRepositoryImpl implements LinkDetailsRepository {
  final LinkDetailsLocalDatasource linkDetailsLocalDatasource;

  LinkDetailsRepositoryImpl({required this.linkDetailsLocalDatasource});

  @override
  Future<Either<String, List<LinkDetails>>> getAllLinkDetails() async {
    try {
      final linkDetails = await linkDetailsLocalDatasource.getAllLinkDetails();
      return right(linkDetails);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<void> storeLinkDetails(LinkDetails linkDetails) async {
    await linkDetailsLocalDatasource.storeLinkDetails(LinkDetailsModel(
        link: linkDetails.link,
        createdAt: linkDetails.createdAt,
        description: linkDetails.description,
        tags: linkDetails.tags
            ?.map((e) => TagModel(
                  name: e.name,
                ))
            .toList()));
  }
}
