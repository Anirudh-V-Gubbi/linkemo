import 'package:get_it/get_it.dart';
import 'package:linkemo/core/local_storage.dart';
import 'package:linkemo/features/home/data/datasource/link_details_local_ds.dart';
import 'package:linkemo/features/home/data/datasource/tags_local_ds.dart';
import 'package:linkemo/features/home/data/repository/link_details_repository_impl.dart';
import 'package:linkemo/features/home/data/repository/tags_repository_impl.dart';
import 'package:linkemo/features/home/domain/repository/link_details_repository.dart';
import 'package:linkemo/features/home/domain/repository/tags_repository.dart';
import 'package:linkemo/features/home/domain/usecase/get_all_link_details.dart';
import 'package:linkemo/features/home/domain/usecase/get_all_tags.dart';
import 'package:linkemo/features/home/domain/usecase/store_link_details.dart';
import 'package:linkemo/features/home/domain/usecase/store_tag.dart';
import 'package:linkemo/features/home/presentation/bloc/link_home_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton(() => LocalStorage());

  // home
  sl.registerFactory(() => LinkHomeBloc(
      getAllLinkDetails: sl(),
      storeLinkDetails: sl(),
      getAllTags: sl(),
      storeTag: sl()));

  // tag details
  sl.registerLazySingleton<LinkDetailsLocalDatasource>(
      () => LinkDetailsLocalDatasourceImpl(localStorage: sl()));
  sl.registerLazySingleton<LinkDetailsRepository>(
      () => LinkDetailsRepositoryImpl(linkDetailsLocalDatasource: sl()));
  sl.registerLazySingleton(
      () => GetAllLinkDetails(linkDetailsRepository: sl()));
  sl.registerLazySingleton(() => StoreLinkDetails(linkDetailsRepository: sl()));

  // tags
  sl.registerLazySingleton<TagsLocalDataSource>(
      () => TagsLocalDataSourceImpl(localStorage: sl()));
  sl.registerLazySingleton<TagsRepository>(
      () => TagsRepositoryImpl(tagsLocalDataSource: sl()));
  sl.registerLazySingleton(() => GetAllTags(tagsRepository: sl()));
  sl.registerLazySingleton(() => StoreTag(tagsRepository: sl()));
}
