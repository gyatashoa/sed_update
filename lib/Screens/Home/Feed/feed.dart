import 'package:flutter/material.dart';
import 'package:sedweb/Screens/Home/Feed/component/add_feed.dart';
import 'package:sedweb/Screens/Home/Feed/component/feed_card.dart';
import 'package:sedweb/components/constraints.dart';
import 'package:sedweb/models/post_model.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title: const Text(
                'SedWeb',
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                      color: kPrimaryColor,
                    ))
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  AddFeed(),
                  FeedCard(
                    postModel: PostModel(
                        sender: {
                          'name': 'Kelvin',
                          'profile':
                              'https://images.unsplash.com/photo-1461800919507-79b16743b257?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'
                        },
                        message: 'Hey',
                        postDate: DateTime.now(),
                        image:
                            'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80'),
                  ),
                ],
              ),
            )));
  }
}
