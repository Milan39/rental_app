// ignore_for_file: file_names

import 'dart:convert';

FieldErrorModal fieldErrorModalFromJson(String str) =>
    FieldErrorModal.fromJson(json.decode(str));

String fieldErrorModalToJson(FieldErrorModal data) =>
    json.encode(data.toJson());

class FieldErrorModal {
  FieldErrorModal({
    required this.errors,
  });

  List<FieldError> errors;

  factory FieldErrorModal.fromJson(Map<String, dynamic> json) =>
      FieldErrorModal(
        errors: List<FieldError>.from(
            json["errors"].map((x) => FieldError.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "errors": List<dynamic>.from(errors.map((x) => x.toJson())),
      };
}

class FieldError {
  FieldError({
    required this.field,
    required this.message,
  });

  String field;
  Map<String, dynamic> message;

  factory FieldError.fromJson(Map<String, dynamic> json) => FieldError(
        field: json["field"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "field": field,
        "message": message,
      };
}
