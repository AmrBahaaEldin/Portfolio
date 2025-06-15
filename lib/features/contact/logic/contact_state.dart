part of 'contact_cubit.dart';

@immutable
sealed class ContactState {}

final class ContactInitial extends ContactState {}

final class ContactSentEmail extends ContactState {}

final class ErrorSentEmail extends ContactState {
  final String errorMessage;

  ErrorSentEmail({required this.errorMessage});
}
