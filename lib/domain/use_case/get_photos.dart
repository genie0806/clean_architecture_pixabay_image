import 'package:try_image_search/domain/model/saearch_model.dart';
import 'package:try_image_search/domain/repository/repository.dart';
import 'package:try_image_search/core/result.dart';

class GetPhotos {
  PhotoRepository repository;

  GetPhotos(
    this.repository,
  );

  Future<Result<SearchModel>> call(String query) async {
    final photos = await repository.getPhotos(query);

    return photos.when(success: (resultPhotos) {
      return Result.success(resultPhotos);
      //성공하면 resultPhotos를 반환하고
    }, error: (e) {
      return Result.error(e);
      // 실패하면 에러메세지를 내보낸다.
    });
  }
}
