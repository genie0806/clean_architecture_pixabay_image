import 'package:flutter/cupertino.dart';
import 'package:try_image_search/core/use_case.dart';
import 'package:try_image_search/domain/model/saearch_model.dart';
import 'package:try_image_search/domain/repository/repository.dart';
import 'package:try_image_search/core/result.dart';

class GetPhotos extends UseCase<Result<SearchModel>, String> {
  PhotoRepository repository;

  GetPhotos(
    this.repository,
  );

  @override
  Future<Result<SearchModel>> call(String query) async {
    final photos = await repository.getPhotos(query);

    return photos.when(success: (resultPhotos) {
      return Result.success(resultPhotos);
    }, error: (e) {
      return Result.error(e);
    });
  }
}
