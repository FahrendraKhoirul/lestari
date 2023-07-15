import 'package:get/get.dart';

import '../kerjasama_model.dart';

class KerjasamaProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Kerjasama.fromJson(map);
      if (map is List)
        return map.map((item) => Kerjasama.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Kerjasama?> getKerjasama(int id) async {
    final response = await get('kerjasama/$id');
    return response.body;
  }

  Future<Response<Kerjasama>> postKerjasama(Kerjasama kerjasama) async =>
      await post('kerjasama', kerjasama);
  Future<Response> deleteKerjasama(int id) async =>
      await delete('kerjasama/$id');
}
