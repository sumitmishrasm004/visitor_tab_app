abstract class BaseApiServices{

  Future<dynamic> getApi(String url);

  Future<dynamic> postApi(var data, String url);

  Future<dynamic> updateApi(var data, String url);
}