
import 'package:get/get.dart';
import 'package:shop/service/network_handler/network_handler.dart';

class LandingPageController extends GetxController{
  
  RxString? token;
  RxBool loggedIn = false.obs;
@override
  void onInit() {
    super.onInit();
  }
  void checkLogin()async{
    var scopedToken = await NetworkHandler.getToken();
    print("Scoped Token: $scopedToken");
    if(scopedToken!=null){
      token?.value = scopedToken;
      loggedIn.value = true;
      print(token?.value);
      var response = await NetworkHandler.get("user-details", scopedToken);
      print(response);
    }
  }

}


























