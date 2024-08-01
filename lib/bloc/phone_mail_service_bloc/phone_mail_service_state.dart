part of 'phone_mail_service_bloc.dart';

@immutable
sealed class PhoneMailServiceState {}

final class PhoneMailServiceInitial extends PhoneMailServiceState {}

final class ServiceLaunchSuccessful extends PhoneMailServiceState {
  final String successMessage;
  ServiceLaunchSuccessful({required this.successMessage});
}

final class ServiceLaunchUnsuccessful extends PhoneMailServiceState {
  final String error;
  ServiceLaunchUnsuccessful({required this.error});
}
