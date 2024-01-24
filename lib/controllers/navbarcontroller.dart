import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class NavBarController extends GetxController {
  var controller = PersistentTabController(initialIndex: 0).obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    controller.value.dispose();
    super.onClose();
  }
}
