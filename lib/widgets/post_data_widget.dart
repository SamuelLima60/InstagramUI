import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PostData extends StatelessWidget {
  final String name;
  final String likes;
  final String text;

  const PostData(
      {super.key, required this.name, required this.likes, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(name),
              ),
              const Spacer(),
              const Icon(Icons.more_vert),
            ],
          ),
        ),
        const SizedBox(height: 10),

        // Image
        Container(
          width: double.infinity,
          height: 200,
          color: Colors.grey,
        ),

        const SizedBox(height: 10),

        // Buttons
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/img/like.svg',
                color: Colors.white,
                height: 25,
                width: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: SvgPicture.asset(
                  'assets/img/comment.svg',
                  color: Colors.white,
                  height: 25,
                  width: 25,
                ),
              ),
              SvgPicture.asset(
                'assets/img/send.svg',
                color: Colors.white,
                height: 25,
                width: 25,
              ),
              const Spacer(),
              SvgPicture.asset(
                'assets/img/bookmark.svg',
                color: Colors.white,
                height: 25,
                width: 25,
              ),
            ],
          ),
        ),

        const SizedBox(height: 10),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$likes likes',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                      text: name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: text,
                    ),
                    const TextSpan(
                      text: 'View all comments',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10)
            ],
          ),
        ),
      ],
    );
  }
}
