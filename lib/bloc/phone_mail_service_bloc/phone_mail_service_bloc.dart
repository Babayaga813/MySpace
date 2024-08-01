import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';
import 'package:my_space/Helpers/ServiceResult/service_result.dart';
import 'package:my_space/Services/url_launcher_service.dart';

part 'phone_mail_service_event.dart';
part 'phone_mail_service_state.dart';

class PhoneMailServiceBloc
    extends Bloc<PhoneMailServiceEvent, PhoneMailServiceState> {
  UrlLauncherService urlservice = GetIt.instance<UrlLauncherService>();
  PhoneMailServiceBloc() : super(PhoneMailServiceInitial()) {
    on<LaunchService>((event, emit) async {
      var result = await urlservice.launchIncomingUrl(
          scheme: event.scheme, dataToPass: event.data);

      if (result.statusCode == StatusCode.ok) {
        emit(ServiceLaunchSuccessful(successMessage: result.message));
      } else {
        emit(ServiceLaunchUnsuccessful(error: result.message));
      }
    });
  }
}
