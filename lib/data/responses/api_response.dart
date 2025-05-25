

import 'package:visitor_app/data/responses/status.dart';

class ApiResponse<T>{

  Status? status;
  T? data;
  String? messsage;

  ApiResponse(this.status, this.data, this.messsage);

  ApiResponse.loading() : status = Status.LOADING;
  ApiResponse.completed(this.data) : status = Status.COMPLETED;
  ApiResponse.error(this.messsage) : status = Status.ERROR;

  @override
  String toString() {
    return "Status : $status \n Message : $messsage \n Data : $data";
  }
}