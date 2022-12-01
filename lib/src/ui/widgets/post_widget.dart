import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';
import 'package:wouflove/src/helpers/format_date.dart';
import 'package:wouflove/src/models/post.dart';
import 'package:wouflove/src/theme.dart';

import '../../constants.dart';

class PostWidget extends StatefulWidget {
  PostWidget({Key? key}) : super(key: key);

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  Post post = Post();
  PageController controller = PageController();
  ValueNotifier<int> currentPageNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: SMALL_PADDING),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            /**************************
             * PICTURES
             **************************/
            Expanded(
              flex: 2,
              child: Stack(
                children: [
                  PageView(
                    controller: controller,
                    onPageChanged: (int index) {
                      currentPageNotifier.value = index;
                    },
                    children: post.images
                        .map(
                          (image) => ClipRRect(
                            borderRadius: BorderRadius.circular(ITEM_RADIUS),
                            child: Image.asset(
                              image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: SMALL_PADDING, top: SMALL_PADDING),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: XSMALL_PADDING),
                          child: Image.asset(
                            post.profilePicture,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Text(
                          post.profileName,
                          style: Theme.of(context).textTheme.bodyLarge,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /**************************
             * BUTTONS AND INDICATORS
             **************************/
            Padding(
              padding: EdgeInsets.symmetric(vertical: SMALL_PADDING),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  /**************************
                   * BUTTONS
                   **************************/
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        "assets/woof.svg",
                        height: XSMALL_CONTAINER_SIZE,
                        width: XSMALL_CONTAINER_SIZE,
                      ),
                      SizedBox(width: XSMALL_PADDING),
                      SvgPicture.asset(
                        "assets/comment.svg",
                        height: XSMALL_CONTAINER_SIZE,
                        width: XSMALL_CONTAINER_SIZE,
                      ),
                      SizedBox(width: XSMALL_PADDING),
                      SvgPicture.asset(
                        "assets/share.svg",
                        height: XSMALL_CONTAINER_SIZE,
                        width: XSMALL_CONTAINER_SIZE,
                      ),
                    ],
                  ),

                  /**************************
                   * INDICATOR
                   **************************/
                  CirclePageIndicator(
                    itemCount: post.images.length,
                    currentPageNotifier: currentPageNotifier,
                    dotColor: WoufTheme.darkGray,
                    selectedDotColor: WoufTheme.primary,
                  ),

                  /**************************
                   * POST DATE
                   **************************/
                  Text(
                    FormatDate.toRelative(post.postedAt),
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: WoufTheme.white.withOpacity(0.5)),
                  )
                ],
              ),
            ),

            /**************************
             * LIKES
             **************************/
            SizedBox(height: XSMALL_PADDING),
            Text("${post.numberLikes} J'aimes"),

            /**************************
             * DESCRIPTION
             **************************/
            SizedBox(height: XSMALL_PADDING),
            Text(post.description)
          ],
        ),
      ),
    );
  }
}
