// import 'package:flutter/material.dart';

// import 'package:get/get.dart';
// import 'package:lestari/app/global_widgets/app_bar.dart';
// import 'package:lestari/app/global_widgets/card_detail.dart';
// import 'package:lestari/constants.dart';

class DetailPanduanView extends GetView {
  const DetailPanduanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: extraDarkGreen,
      body: Column(
        children: [
          appBar(context, "Detail Panduan"),
          roundedCardDetail(
              "",
              "Matrik Penilaian Eco Office 2023",
              "19 Juni 2023",
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi faucibus facilisis ex ac hendrerit. Nullam ut velit consectetur, aliquam magna vitae, dapibus magna. Sed eu quam tortor. Nam finibus tortor quis lectus lobortis, vitae pretium felis convallis. Phasellus dapibus nisi nec posuere dignissim. Aliquam aliquam ultrices nibh et molestie. Phasellus euismod nec mauris at fermentum. Quisque feugiat ex ac molestie interdum. Aenean euismod pharetra metus quis euismod. Aliquam posuere sem diam, vitae facilisis sapien vulputate ut. Aenean tempus, sem non commodo rhoncus, elit nibh tempor urna, sit amet pharetra lorem tortor sit amet diam. Aenean mattis quam eget laoreet iaculis.",
              () {})
        ],
      ),
    );
  }
}
