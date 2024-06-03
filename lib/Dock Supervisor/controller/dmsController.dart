import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import 'package:moolwmsstore/Auth/Model/user.dart';
import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:moolwmsstore/Dock%20Supervisor/controller/dmsRepo.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';
import 'package:restart_app/restart_app.dart';

class DmsController extends GetxController {
  final Dmsrepo dmsRepo;
  final ApiClient apiClient;
  bool isLoading = false;
  bool isOwner;
  User user;
  DmsController(
      {required this.dmsRepo,
      required this.apiClient,
      required this.user,
      this.isOwner = false});

  updateProfilePic(XFile file) {
    apiClient.uploadImage(file).then((v) {
      if (v != null) {
        apiClient.postData("avtar/addAvtar",
            {"user_id": user.id, "profile": v}).then((v2) async {
          if (v2.data["result"] == "Users Avatar add successfully") {
            Snacks.greenSnack("Profile Pic updated successfully");
            var box = await Hive.openBox('authbox');
            user = user.copyWith(avatar: v);
            update();

            box.put("user", user);
          }
        });
      }
    });
  }

  logout() async {
    var box = await Hive.openBox('authbox');
    Get.find<DmsController>().dispose();

    box.clear();
    Restart.restartApp();
  }
}
