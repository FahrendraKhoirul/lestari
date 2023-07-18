import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DetailLokasiController extends GetxController {
  final listLink = [
    "https://lestari.ntbprov.go.id/maps",
    "https://lestari.ntbprov.go.id/maps?type=community",
    "https://lestari.ntbprov.go.id/maps?type=management",
    "https://lestari.ntbprov.go.id/maps?type=tps",
    "https://lestari.ntbprov.go.id/maps?type=tsi"
  ];

  
  WebViewController webViewController(int index) {
    return WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith(listLink[index])) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(listLink[index]));
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
