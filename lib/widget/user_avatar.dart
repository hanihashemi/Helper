import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:helper/widget/empty.dart';

class UserAvatar extends StatelessWidget {
  final String image;
  final double size;
  final Function onTap;
  final double radius;

  const UserAvatar(
      {@required this.image, this.onTap, this.size = 80.0, this.radius = 10.0});

  @override
  Widget build(BuildContext context) {
    return this.image == null ? EmptyWidget() : _buildAvatar();
  }

  Widget _buildAvatar() {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: CachedNetworkImageProvider(image),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(radius)),
        ),
        child: SizedBox(),
      ),
    );
  }
}
