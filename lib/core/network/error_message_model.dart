// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable {
  final bool success;
  final int statusCode;
  final String statusmessage;

  const ErrorMessageModel(this.success, this.statusCode, this.statusmessage);

  @override
  List<Object> get props => [success, statusCode, statusmessage];
  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) {
    return ErrorMessageModel(
        json["success"], json["status_code"], json["status_message"]);
  }
}
