// ignore_for_file: file_names

class ErrorModal {
  ErrorModal({
    required this.errors,
  });

  List<Error> errors;

  factory ErrorModal.fromJson(Map<String, dynamic> json) => ErrorModal(
    errors: List<Error>.from(json["errors"].map((x) => Error.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "errors": List<dynamic>.from(errors.map((x) => x.toJson())),
  };
}

class Error {
  Error({
    required this.field,
    required this.message,
  });

  String field;
  List<String> message;

  factory Error.fromJson(Map<String, dynamic> json) => Error(
    field: json["field"],
    message: List<String>.from(json["message"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "field": field,
    "message": List<dynamic>.from(message.map((x) => x)),
  };
}
