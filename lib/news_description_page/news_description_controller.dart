import 'package:flutter_news_app/data/news_model.dart';
import 'package:flutter_news_app/network/service_factory.dart';
import 'package:flutter/foundation.dart';

class NewsDescriptionController extends ChangeNotifier {
  Articles? _singleEvent;
  Articles? get singleEvent => _singleEvent;

  bool _isLoading = true;
  bool get isLoading => _isLoading;

  Future<void> getData() async {
    try {
      _isLoading = true;
      notifyListeners();

      var description = await RemoteServices.fetchDescription();
      if (description != null) {
        _singleEvent = description;
      }
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
