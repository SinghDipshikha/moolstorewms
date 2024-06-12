import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:moolwmsstore/Common%20Data/api/api_client.dart';
import 'package:moolwmsstore/View/Styles/Styles..dart';

class ProfileAvatar extends StatefulWidget {
  Function(String) onImageUploaded;
  Widget initialWidget;
  String? imageUrl;
  Color? borderColor;
  ProfileAvatar(
      {super.key,
      required this.initialWidget,
      this.imageUrl,
      this.borderColor,
      required this.onImageUploaded});

  @override
  State<ProfileAvatar> createState() => _ProfileAvatarState();
}

class _ProfileAvatarState extends State<ProfileAvatar> {
  final ImagePicker picker = ImagePicker();
  bool uploading = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        picker
            .pickImage(source: ImageSource.gallery, imageQuality: 50)
            .then((v) {
          if (v != null) {
            setState(() {
              uploading = true;
            });
            Get.find<ApiClient>().uploadImage(v).then((url) {
              if (url != null) {
                setState(() {
                  widget.imageUrl = url;
                  uploading = false;
                });
                widget.onImageUploaded(url);
              }
            });
          }
        });
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 90,
            width: 90,
            decoration: ShapeDecoration(
              color: Colors.transparent,
              shape: OvalBorder(
                side: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: widget.borderColor ?? Colors.white,
                ),
              ),
            ),
          ),
          uploading
              ? LoadingAnimationWidget.staggeredDotsWave(
                  color: AppColors.primaryColor,
                  size: 60,
                )
              : ClipRRect(
                  borderRadius: BorderRadius.circular(112),
                  child: SizedBox(
                    height: 80,
                    width: 80,
                    child: widget.imageUrl == null
                        ? widget.initialWidget
                        : CachedNetworkImage(
                            fit: BoxFit.cover,
                            imageUrl: widget.imageUrl ?? '',
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                  ),
                ),
        ],
      ),
    );
  }
}
