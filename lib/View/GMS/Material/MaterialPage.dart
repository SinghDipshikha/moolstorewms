import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:moolwmsstore/appConstants.dart';
import 'package:moolwmsstore/helper/route_helper.dart';
import 'package:moolwmsstore/routes/approutes.gr.dart';
// @RoutePage()
// class MaterialPageInOut extends StatelessWidget {
//   const MaterialPageInOut({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MobileWebBody(
//       body: [
//         SizedBox(
//           height: MediaQuery.sizeOf(context).height,
//           child: Navigator(
//             // You MUST pass an unique key to the Navigator
//             key: Get.nestedKey(1),
//             // Initial route (see destination.dart above)
//             initialRoute: RouteHelper.material,
//             // Generate a route based on Destination (see destination.dart above)
//             onGenerateRoute: (settings) {
//               Logger().i(settings.name);
//               late Widget page;
//               switch (settings.name) {
//                 case "/":
//                   page = const MaterialPageBody();
//                 case RouteHelper.material:
//                   page = const MaterialPageBody();
//                 case RouteHelper.materialInward:
//                   page = const MaterialInward();
//               }

//               return MaterialPageRoute(builder: (context) {
//                 return page;
//               });
//             },
//           ),
//         )
//       ],
//     );
//   }
// }

@RoutePage()
class MaterialPageBody extends StatefulWidget {
  const MaterialPageBody({Key? key}) : super(key: key);

  @override
  _MaterialPageBodyState createState() => _MaterialPageBodyState();
}

class _MaterialPageBodyState extends State<MaterialPageBody> {
  @override
  Widget build(BuildContext context) {
 return Container();
 }
}
