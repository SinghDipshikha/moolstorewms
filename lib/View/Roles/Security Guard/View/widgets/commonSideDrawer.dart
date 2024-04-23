import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF232323),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color(0xFF232323),
            ),
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: const ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/profile_photo.png"),
                      fit: BoxFit.fill,
                    ),
                    shape: OvalBorder(
                      side: BorderSide(
                        width: 2,
                        strokeAlign: BorderSide.strokeAlignOutside,
                        color: Color(0x195A57FF),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
