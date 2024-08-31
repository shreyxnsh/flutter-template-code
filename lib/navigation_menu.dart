
import 'package:contemporarygospel/features/home/screens/home.dart';
import 'package:contemporarygospel/utils/constants/colors.dart';
import 'package:contemporarygospel/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class NavigationMenu extends StatefulWidget {
  final token;
  const NavigationMenu({super.key, this.token});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  late String userId;
  late String userName;

  @override
  void initState() {
    super.initState();

    final userToken = GetStorage().read('token');

    if (widget.token != null) {
      Map<String, dynamic> jwtDecodedToken = JwtDecoder.decode(userToken);

      // getting the user id of the user from db by variable _id from tokenData

      userId = jwtDecodedToken['userID'];
      userName = jwtDecodedToken['userName'];
      // userId = jwtDecodedToken['_id'];
      print("User token in NavigationMenu is : ${widget.token}");
      print("User ID in NavigationMenu is : $userId");
      print("User Name in NavigationMenu is : $userName");
    } else {
      // Handle the case where the token is null
      print("Token is null");
    }
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = FHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.selectedIndex.value,
        
          onTap: (int index) => controller.selectedIndex.value = index,
          backgroundColor: darkMode ? FColors.light : FColors.dark,
          selectedItemColor: FColors.primary,
          unselectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(fontSize: 12),
          unselectedLabelStyle: TextStyle(fontSize: 11),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Iconsax.house_2, size: 22,),
              label: "Church",
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.messages_3, size: 22),
              label: "Chats",
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.play_circle4, size: 22),
              label: "Library",
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.setting_2, size: 22),
              label: "Settings",
            ),
          ],
        ),
      ),
      body: PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          showCupertinoDialog(
            context: context,
            builder: (BuildContext context) {
              return CupertinoAlertDialog(
                title: const Text("Exit"),
                content: const Text("Are you sure you want to exit"),
                actions: [
                  CupertinoDialogAction(
                    child: const Text(
                      "Yes",
                      style: TextStyle(color: FColors.primary),
                    ),
                    onPressed: () {
                      SystemNavigator.pop();
                    },
                  ),
                  CupertinoDialogAction(
                    child: const Text(
                      "No",
                      style: TextStyle(color: FColors.primary),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              );
            },
          );
        },
        child: Obx(
          () => controller.screens[controller.selectedIndex.value],
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 1.obs;

  final screens = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    // const ChatScreen(),
    // const LibraryScreen(),
    // const SettingScreen(),
  ];
}
