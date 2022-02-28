import 'package:try_image_search/core/result.dart';
import 'package:try_image_search/domain/model/saearch_model.dart';

abstract class PhotoRepository {
  Future<Result<SearchModel>> getPhotos(String query);
}