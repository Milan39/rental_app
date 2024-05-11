part of 'booking_cubit.dart';

class BookingState extends Equatable {
  const BookingState();

  @override
  List<Object?> get props => [];
}

class BookingLoading extends BookingState {}

class BookingSuccess extends BookingState {
  final BookingResponse bookingResponse;

  const BookingSuccess({required this.bookingResponse});

  @override
  List<Object?> get props => [bookingResponse];
}

class BookingFailure extends BookingState {
  final String message;

  const BookingFailure({required this.message});

  @override
  List<Object?> get props => [message];
}
