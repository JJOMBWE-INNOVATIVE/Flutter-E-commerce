import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/features/login/login_bottomsheet.dart';
import 'package:shop/features/profile/footer_content.dart';
import 'package:shop/foundation/sp_solid_button/sp_solid_button.dart';
import 'package:shop/theme/colors.dart';
import '../../foundation/profile_item/profile_item.dart';

class ProfileWithoutLogin extends StatelessWidget {
  const ProfileWithoutLogin({super.key});
   final double topContainerHeight = 190;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height:topContainerHeight,
          child: Stack(
            children: [
              Column(
              children: [
                Container(
                  height: topContainerHeight * .50,
                  color: AppColor.dummyBGColor,
                ),
                Container(
                  height:topContainerHeight * .42,
                  color: AppColor.whiteColor,
                ),
              ],
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: SizedBox(
                  height: 132,
                  width: 132,
                  child: Card(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset("assets/images/profile.png",
                      color: AppColor.textColor2,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 22,
                  left: 170,
                  child: SpSolidButton(
                    text: "LOG IN/SIGN UP",minusWidith: 210,
                    onPressed: () {
                       Get.bottomSheet(LoginBottomSheet());
                    }, minusWidth: 0,
                  ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5,),
        Container(
            color: AppColor.whiteColor,
            child: Column(
          children: [
            ProfileItem(
              title: "Orders",
              subtitle: "Check your order status",
              assetName: "orders.png",
              isLast: false,
              onTap: () {
                Get.bottomSheet(LoginBottomSheet());
              },
            ),
            const ProfileItem(
              title: "Help Center",
              subtitle: "Help regarding your recent purchase",
              assetName: "help.png",
              isLast: false,
            ),
            const ProfileItem(
              title: "WishList",
              subtitle: "Your most loved style",
              assetName: "wishlist.png",
              isLast: true,
            ),
          ],
        )),
        const SizedBox(height: 15,),
        Container(
            color: AppColor.whiteColor,
            child: const Column(
              children: [
                ProfileItem(
                  title: "Scan for coupon",
                  assetName: "qr-code.png",
                  isLast: false,
                ),
                ProfileItem(
                  title: "Refer and Earn",
                  assetName: "salesman.png",
                  isLast: true,
                ),
              ],
            )),
        const SizedBox(height: 15,),
        const FooterContent(),
        const SizedBox(height: 50,),
        Text("APP VERSION 0.0.1",style: Theme.of(context).textTheme.overline,),
        const SizedBox(height: 80,),
      ],
    );
  }
}
