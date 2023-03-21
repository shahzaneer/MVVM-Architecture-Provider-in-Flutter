import 'package:mvvm_app/data/response/status.dart';

class ApiResponse<T> {
  //! Data members with T as generics
  Status? status;
  String? message;
  T? data;

// ! Contructor
  ApiResponse(this.status, this.message, this.data);

// ! Named Constructors with initializer list
  ApiResponse.loading(this.message, this.data) : status = Status.loading;
  ApiResponse.completed(this.message, this.data) : status = Status.completed;
  ApiResponse.error(this.message, this.data) : status = Status.error;

  @override
  String toString() {
    return "status : $status\n message : $message\n data : $data ";
  }
}

void main(List<String> args) {
  ApiResponse<int> a = ApiResponse(Status.loading, "message", 89);
    ApiResponse<int> b = ApiResponse.completed("message", 89);


  print(b);
}
