import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  String? imageUrl;
  double? radius;
  EdgeInsetsGeometry? padding;
  ProfileAvatar({Key? key, this.imageUrl, this.radius, this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(vertical: 5),
      child: CircleAvatar(
        radius: radius ?? 32,
        backgroundColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(1),
          child: CircleAvatar(
            radius: radius ?? 32,
            backgroundColor: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(100)),
                child: CachedNetworkImage(
                  // imageBuilder: (context, imageProvider) {
                  //   return ImageNetwork(
                  //       image: imageUrl ?? 'https://i.pravatar.cc/150?img=1',
                  //       height: radius ?? 32,
                  //       width: radius ?? 32);
                  // },
                  imageUrl: imageUrl ?? 'https://i.pravatar.cc/150?img=1',
                  placeholder: (context, url) {
                    return const CircularProgressIndicator();
                  },
                  // height: 80,
                  // width: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
