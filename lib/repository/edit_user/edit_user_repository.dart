

import 'package:visitor_app/constant/app_url/app_url.dart';
import 'package:visitor_app/data/network/network_api_services.dart';

class EditUserRepository{
  final _apiService = NetworkApiServices();

  Future<dynamic> updateVisitor(var data) async{
    dynamic response = await _apiService.postApi(data, AppUrl.updateVisitor);
    return response;
  }
}

