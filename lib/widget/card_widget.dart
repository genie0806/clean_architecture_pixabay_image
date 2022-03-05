import 'package:flutter/material.dart';
import 'package:try_image_search/domain/model/search_data.dart';

class CardViewItem extends StatelessWidget {
  final Hits hit;
  final void Function() onTap;

  const CardViewItem({Key? key, required this.hit, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
            child: Card(
              child: Image.network(
                hit.previewURL,
                fit: BoxFit.fill,
                width: 150,
                height: 150,
              ),
            ),
            onTap: onTap),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: onTap,
                    child: Image.asset(
                      "assets/images/like.png",
                      width: 20,
                      height: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(hit.likes.toString()),
                  const SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    "assets/images/comment.png",
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(hit.comments.toString()),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
