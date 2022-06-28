import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tuto_http/app/presentation/screens/home/post_like_design.dart';
import 'package:tuto_http/app/presentation/screens/home/profile_name_time_ago.dart';
import 'package:tuto_http/app/presentation/widgets/post_single_bg.dart';
import 'package:tuto_http/app/presentation/widgets/profile_image_design.dart';
import 'package:timeago/timeago.dart' as timeago;

class PostSingleDesign extends StatelessWidget {
  const PostSingleDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final time = timeago.format(DateTime.parse("2022-06-28T06:07:58.449Z"),
        locale: 'en');

    return PostSingleBg(
      customChild:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const ProfileImageDesign(
                imageUrl:
                    'https://cdn.pixabay.com/photo/2016/11/29/03/52/man-1867175_1280.jpg',
              ),
              const SizedBox(
                width: 8,
              ),
              ProfileNameTimeAgo(
                time: time,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: CachedNetworkImage(
            imageUrl:
                'https://cdn.pixabay.com/photo/2016/11/22/19/25/man-1850181_1280.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 185,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'adventure.yuki frozen grass short-coated black do...',
          style: TextStyle(
              color: Colors.black.withOpacity(0.4),
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 10,
        ),
        const PostLikeDesign(likeCount: 10),
           const SizedBox(
          height: 6,
        ),
        const Divider(),
         const SizedBox(
          height: 6,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            FaIcon(
              FontAwesomeIcons.heart,
              size: 24,
              color: Colors.black,
            ),
            SizedBox(
              width: 16,
            ),
            FaIcon(
              FontAwesomeIcons.comment,
              size: 24,
              color: Colors.black,
            ),
          ],
        )
      ]),
    );
  }
}
