import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_platforms/components/side_menu_item.dart';
import 'package:responsive_platforms/components/tags.dart';
import 'package:responsive_platforms/constants.dart';
import 'package:responsive_platforms/extensions.dart';
import 'package:responsive_platforms/responsive.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: EdgeInsets.only(top: kIsWeb ? kDefaultPadding : 0),
      color: kBgLightColor,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/Logo Outlook.png",
                    width: 46,
                  ),
                  Spacer(),
                  // We don't want to show this close button on Desktop mood
                  if (!Responsive.isDesktop(context)) CloseButton(),
                ],
              ),
              SizedBox(height: kDefaultPadding),
              TextButton.icon(
                // minWidth: double.infinity,
                // padding: EdgeInsets.symmetric(
                //   vertical: kDefaultPadding,
                // ),
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(10),
                // ),
                // color: kPrimaryColor,
                onPressed: () {},
                icon: WebsafeSvg.asset("assets/Icons/Edit.svg", width: 16),
                label: Text(
                  "New message",
                  style: TextStyle(color: Colors.white),
                ),
              ).addNeumorphism(
                topShadowColor: Colors.white,
                bottomShadowColor: Color(0xFF234395).withOpacity(0.2),
              ),
              SizedBox(height: kDefaultPadding),
              TextButton.icon(
                // minWidth: double.infinity,
                // padding: EdgeInsets.symmetric(
                //   vertical: kDefaultPadding,
                // ),
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(10),
                // ),
                // color: kBgDarkColor,
                onPressed: () {},
                icon: WebsafeSvg.asset("assets/Icons/Download.svg", width: 16),
                label: Text(
                  "Get messages",
                  style: TextStyle(color: kTextColor),
                ),
              ).addNeumorphism(),
              SizedBox(height: kDefaultPadding * 2),
              // Menu Items
              SideMenuItem(
                press: () {},
                title: "Inbox",
                iconSrc: "assets/Icons/Inbox.svg",
                isActive: true,
                itemCount: 3,
              ),
              SideMenuItem(
                press: () {},
                title: "Sent",
                iconSrc: "assets/Icons/Send.svg",
                isActive: false,
              ),
              SideMenuItem(
                press: () {},
                title: "Drafts",
                iconSrc: "assets/Icons/File.svg",
                isActive: false,
              ),
              SideMenuItem(
                press: () {},
                title: "Deleted",
                iconSrc: "assets/Icons/Trash.svg",
                isActive: false,
                showBorder: false,
              ),

              SizedBox(height: kDefaultPadding * 2),
              // Tags
              Tags(),
            ],
          ),
        ),
      ),
    );
  }
}
