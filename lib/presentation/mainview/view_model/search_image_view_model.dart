import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:try_image_search/core/result.dart';
import 'package:try_image_search/domain/use_case/main_use_cases.dart';
import 'package:try_image_search/presentation/mainview/view_model/photo_state.dart';
import 'package:try_image_search/presentation/mainview/ui_event.dart';

class SearchImageViewModel extends ChangeNotifier {
  MainUseCases useCases;

  SearchImageViewModel(
    this.useCases,
  );

  PhotoState _state = PhotoState();
  PhotoState get state => _state;

  final _eventController = StreamController<UiEvent>();
  Stream<UiEvent> get eventStream => _eventController.stream;

  Future<void> fetch(String query) async {
    final result = await useCases.getPhotos(query);

    result.when(success: (resultPhotos) {
      _state = _state.copyWith(searchModel: resultPhotos);
      notifyListeners();
    }, error: (e) {
      print((result as Error).e.toString());
      _eventController.add(UiEvent.showSnackBar('네트워크 에러입니다.'));
      //네트워크 안됐을시 에러메세지 표시
    });
  }
}
