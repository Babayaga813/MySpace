part of 'phone_mail_service_bloc.dart';

@immutable
sealed class PhoneMailServiceEvent {}

final class LaunchService extends PhoneMailServiceEvent {
  final String scheme;
  final String data;
  LaunchService({required this.scheme, required this.data});
}
