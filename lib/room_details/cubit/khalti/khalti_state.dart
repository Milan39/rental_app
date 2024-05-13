import 'package:equatable/equatable.dart';

enum Status {
  inProcess,
  failed,
  paid,
  initial,

  initiated,
}

class KhaltiState extends Equatable {
  final Status status;
  final String pidx;
  final String message;

  const KhaltiState({
    this.status = Status.initial,
    this.message = "",
    this.pidx = "",
  });

  KhaltiState copyWith({
    Status? status,
    String? message,
    String? pidx,
  }) =>
      KhaltiState(
          status: status ?? this.status,
          message: message ?? this.message,
          pidx: pidx ?? this.pidx,
      );

  @override
  List<Object> get props => [
    status,
    message,
  ];
}
