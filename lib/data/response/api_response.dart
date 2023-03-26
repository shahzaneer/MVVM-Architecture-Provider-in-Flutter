import 'package:mvvm_app/data/response/status.dart';

class ApiResponse<T> {
  //! Data members with T as generics
  Status? status;
  String? message;
  T? data;

// ! Contructor
  ApiResponse(this.status, this.message, this.data);

// ! Named Constructors with initializer list
  ApiResponse.loading() : status = Status.loading;
  ApiResponse.completed(this.data) : status = Status.completed;
  ApiResponse.error(this.message) : status = Status.error;

  @override
  String toString() {
    return "status : $status\n message : $message\n data : $data ";
  }
}
