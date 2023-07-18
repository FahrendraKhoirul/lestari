import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lestari/app/global_widgets/card_aduan.dart';
import 'package:lestari/app/global_widgets/search_field.dart';
import 'package:lestari/app/modules/aduan/aduan_model.dart';
import 'package:lestari/constants.dart';

class AduanView extends GetView {
  const AduanView({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: paddingMedium, vertical: paddingMedium),
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  searchField(screenWidth, "Cari aduan...", (value) {
                    print(value);
                  }),
                  ListView.builder(
                      itemCount: 8,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return listCardItem(
                            "12 April 2023",
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut porta ullamcorper dui, vel dignissim orci",
                            "https://publicinterestnetwork.org/wp-content/uploads/2018/02/MN-dump.jpg",
                            screenWidth,
                            Aduan());
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
