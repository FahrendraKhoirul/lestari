import 'package:get/get.dart';

import '../sarpras_model.dart';

class SarprasProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Sarpras.fromJson(map);
      if (map is List)
        return map.map((item) => Sarpras.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Sarpras?> getSarpras(int id) async {
    final response = await get('sarpras/$id');
    return response.body;
  }

  Future<Response<Sarpras>> postSarpras(Sarpras sarpras) async =>
      await post('sarpras', sarpras);
  Future<Response> deleteSarpras(int id) async => await delete('sarpras/$id');
}
