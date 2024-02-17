import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:instagram_get_cli/app/data/model/story_model.dart';
import 'package:instagram_get_cli/app/shared/widget/image_story.dart';
import 'package:instagram_get_cli/app/shared/widget/post_widget.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (context) {
      return SafeArea(
        top: true,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: Image.asset(
              "assets/images/logo_ig.png",
              height: 24,
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.message),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_box_outlined),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("data"),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  height: 97.75,
                  child: ListView.builder(
                    itemCount: controller.storyModel.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      StoryModel data = controller.storyModel[index];
                      return Padding(
                        padding: const EdgeInsets.only(
                          right: 12,
                        ),
                        child: ImageStory(
                          story: data,
                          onTap: () {
                            controller.toStoryPageView(data.storyItems);
                          },
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Post(
                  postModel: controller.postModel,
                  onPressed: controller.changeIconLike,
                ),
                const SizedBox(
                  height: 18,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
