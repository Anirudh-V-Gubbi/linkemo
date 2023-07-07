import 'package:dartz/dartz.dart';
import 'package:linkemo/features/home/domain/entity/link_details.dart';
import 'package:linkemo/features/home/domain/repository/link_details_repository.dart';

class GetAllLinkDetails {
  final LinkDetailsRepository linkDetailsRepository;

  GetAllLinkDetails({required this.linkDetailsRepository});

  Future<Either<String, LinkDetails>> call() async{
    return (await linkDetailsRepository.getAllLinkDetails());
  }
}