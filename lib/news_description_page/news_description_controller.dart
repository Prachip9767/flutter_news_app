import 'package:get/get.dart';
import '../data/news_model.dart';
import '../network/service_factory.dart';

class NewsDescriptionController extends GetxController{
  final Rx<Articles?> singleEvent = Rx<Articles?>(null);
  var isLoading = true.obs;
  var articles = <Articles>[].obs;

  @override
  void onInit() async {
    singleEvent.value = Get.arguments as Articles;
    getData();
  }
  getData() async {
    try {
      isLoading(true);
      var products = await RemoteServices.fetchDescription();
      if (products != null) {
        singleEvent.value = products;
      }
    } finally {
      isLoading(false);
    }
  }
}