// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:moolwmsstore/View/Styles/Styles..dart';

// class CustomButton extends StatelessWidget {
//   bool glow;
//   void Function()? onTap;
//   double? width;
//   String title;
//   double? radius;

//   Color? color;
//   String? leftIcon;
//   String? rightIcon;
//   CustomButton(
//       {super.key,
//       this.onTap,
//       this.width,
//       required this.title,
//       this.glow = true,
//       this.color,
//       this.leftIcon,
//       this.rightIcon,
//       this.radius});

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       borderRadius: BorderRadius.all(Radius.circular(radius ?? 60)),
//       onTap: onTap,
//       child: Stack(
//         //alignment: Alignment.centerLeft,
//         children: [
//           Container(
//             width: width ?? (context.isPhone ? width : 198),
//             alignment: Alignment.center,
//             height: 60,
//             decoration: BoxDecoration(
//               color: glow ? AppColors.primaryColor : Colors.white,
//               borderRadius: BorderRadius.all(
//                 Radius.circular(radius ?? 5),
//               ),
//               border: Border.all(width: 0.5, color: Colors.black),
//               boxShadow: glow
//                   ? [
//                       BoxShadow(
//                         color: color ?? AppColors.primaryColor.withOpacity(0.3),
//                         blurRadius: 10,
//                         offset: const Offset(0, 4),
//                         spreadRadius: 0,
//                       )
//                     ]
//                   : null,
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 if (leftIcon != null)
//                   Padding(
//                     padding: const EdgeInsets.only(left: 20),
//                     child: Image.asset(
//                       leftIcon!,
//                       color: glow ? Colors.white : null,
//                     ),
//                   ),
//                 Expanded(
//                   child: Text(
//                     title,
//                     style: TextStyles.buttonText(context).copyWith(
//                       color: glow ? Colors.white : Colors.black,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//                 if (rightIcon != null)
//                   Padding(
//                     padding: const EdgeInsets.only(right: 20),
//                     child: Image.asset(
//                       height: 26,
//                       rightIcon!,
//                       color: glow ? Colors.white : null,
//                     ),
//                   ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class CustomButton2 extends StatelessWidget {
//   void Function()? onTap;
//   double? width;
//   String title;
//   double? radius;

//   double? rightIconheight;
//   double? leftIconheight;
//   Color? color;
//   String? leftIcon;
//   String? rightIcon;
//   CustomButton2(
//       {super.key,
//       this.onTap,
//       this.width,
//       required this.title,
//       this.leftIconheight,
//       this.rightIconheight,
//       this.color,
//       this.leftIcon,
//       this.rightIcon,
//       this.radius});

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       // highlightColor:
//       //     color ?? Theme.of(context).primaryColor.withOpacity(0.1),
//       // // hoverColor: color?? Theme.of(context).primaryColor,
//       // splashColor: color ?? Theme.of(context).primaryColor.withOpacity(0.1),
//       borderRadius: BorderRadius.all(Radius.circular(radius ?? 60)),
//       onTap: onTap,
//       child: Stack(
//         //alignment: Alignment.centerLeft,
//         children: [
//           Container(
//             width: width ?? (context.isPhone ? width : 198),
//             alignment: Alignment.center,
//             height: 60,
//             decoration: BoxDecoration(
//                 color: AppColors.primaryColor,
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(radius ?? 5),
//                 ),
//                 border: Border.all(width: 0.5, color: Colors.black),
//                 boxShadow: [
//                   BoxShadow(
//                     color: color ?? AppColors.primaryColor.withOpacity(0.3),
//                     blurRadius: 10,
//                     offset: const Offset(0, 4),
//                     spreadRadius: 0,
//                   )
//                 ]),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 if (leftIcon != null)
//                   Image.asset(
//                     leftIcon!,
//                     height: leftIconheight,
//                     // color: glow ? Colors.white : null,
//                   ),
//                 Text(
//                   title,
//                   style: const TextStyle(
//                     color: Colors.white,
//                   ),
//                   textAlign: TextAlign.center,
//                 ).paddingSymmetric(horizontal: 10),
//                 if (rightIcon != null)
//                   Image.asset(rightIcon!, height: rightIconheight),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
