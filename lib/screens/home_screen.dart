import 'package:flutter/material.dart';
import '/cores/app_colors.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> stories = [
    'assets/images/story1.png',
    'assets/images/story2.png',
    'assets/images/story3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Facebook Header
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const Text(
                    'Facebook',
                    style: TextStyle(
                      color: AppColors.blue,
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  const Icon(Icons.add_circle, size: 25),
                  const SizedBox(width: 15),
                  const Icon(Icons.search, size: 27),
                  const SizedBox(width: 15),
                  const Icon(Icons.messenger, size: 25),
                ],
              ),
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.home, color: AppColors.blue, size: 27),
                Icon(Icons.ondemand_video, color: AppColors.gray, size: 27),
                Icon(Icons.storefront, color: AppColors.gray, size: 27),
                Icon(Icons.people_outline, color: AppColors.gray, size: 27),
                Icon(Icons.notifications_none, color: AppColors.gray, size: 27),
                Icon(Icons.account_circle, color: AppColors.gray, size: 27),
              ],
            ),

            const Divider(),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 20,
                    backgroundImage:
                    AssetImage('assets/images/profile.png'),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Text(
                      "What's in Your Mind?",
                      style: TextStyle(
                        color: AppColors.gray,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.image,
                    color: Colors.green,
                    size: 27,
                  ),
                ],
              ),
            ),

            const Divider(),

            // Stories
            SizedBox(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 105,
                    margin: const EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'assets/images/profile.png',
                              width: 105,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'Create a Story',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),

                  for (int i = 0; i < stories.length; i++)
                    Container(
                      width: 105,
                      margin: const EdgeInsets.all(5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          stories[i],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                ],
              ),
            ),

            const Divider(),

            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(
                            'assets/images/route_profile.png',
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Route',
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '8h · 🌐',
                              style: TextStyle(
                                color: AppColors.gray,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Icon(Icons.more_horiz),
                      ],
                    ),
                  ),

                  Image.asset(
                    'assets/images/route_post.png',
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),

                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.favorite_border, size: 23),
                        Icon(Icons.comment_outlined, size: 23),
                        Icon(Icons.send_outlined, size: 23),
                        Icon(Icons.bookmark_border, size: 23),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}