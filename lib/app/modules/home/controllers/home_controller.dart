import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_get_cli/app/data/model/post_model.dart';
import 'package:instagram_get_cli/app/data/model/story_model.dart';
import 'package:instagram_get_cli/app/routes/app_pages.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';

class HomeController extends GetxController {
  final storyController = StoryController();
  PostModel postModel = PostModel(
    namaAkun: 'Ruffles',
    description:
        'Username Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
    fotoProfile: 'foto_profile',
    jumlahLike: 1,
    isLike: false,
    postingGambar: 'foto_profile',
    isSponsor: true,
  );

  List<StoryModel> storyModel = [];
  @override
  void onInit() {
    loadStoryModel();
    super.onInit();
  }

  void loadStoryModel() {
    storyModel = [
      StoryModel(
        image: 'profil1',
        namaAkun: 'kevinddy',
        storyItems: [
          StoryItem.text(
            title:
                "Username Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
            backgroundColor: Colors.blue,
          ),
          StoryItem.text(
            title: "Halo ges",
            backgroundColor: Colors.red,
          ),
        ],
        isLoginAccount: true,
      ),
      StoryModel(
        image: 'profil2',
        namaAkun: 'falah',
        storyItems: [
          StoryItem.pageImage(
            url:
                "https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
            caption: "mam sayur",
            controller: storyController,
          ),
        ],
      ),
      StoryModel(
        image: 'profil3',
        namaAkun: 'indah',
        storyItems: [
          StoryItem.pageImage(
            url:
                "https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
            caption: "nge-pancake",
            controller: storyController,
          ),
        ],
      ),
      StoryModel(
        image: 'profil4',
        namaAkun: 'putri',
        storyItems: [
          StoryItem.pageImage(
            url:
                "https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
            caption: "nge-pancake",
            controller: storyController,
          ),
        ],
      ),
      StoryModel(
        image: 'profil5',
        namaAkun: 'bunga',
        storyItems: [
          StoryItem.pageImage(
            url:
                "https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
            caption: "nge-pancake",
            controller: storyController,
          ),
        ],
      ),
    ];
    update();
  }

  void changeIconLike() {
    postModel.isLike = !postModel.isLike;
    if (postModel.isLike) {
      postModel.jumlahLike++;
    } else {
      postModel.jumlahLike--;
    }
    update();
  }

  void toStoryPageView(
    List<StoryItem>? storyItems,
  ) {
    Get.toNamed(Routes.SNAP_GRAM, arguments: {
      'story': storyItems,
    });
  }
}
