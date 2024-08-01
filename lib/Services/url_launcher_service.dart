import 'package:my_space/Helpers/ServiceResult/service_result.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherService {
  Future<ServiceResult<bool>> launchIncomingUrl(
      {required String scheme, required String dataToPass}) async {
    try {
      final Uri uriToOpen;
      if (scheme == 'mailto') {
        uriToOpen = Uri(
          scheme: scheme,
          path: dataToPass,
          query: encodeQueryParameters(<String, String>{
            'subject': 'Let\'s Connects',
            'body': 'It\'s good to hear from you :)',
          }),
        );
      } else {
        uriToOpen = Uri(scheme: scheme, path: dataToPass);
      }
      var data = await launchUrl(uriToOpen);
      return ServiceResult(
          statusCode: data ? StatusCode.accepted : StatusCode.notFound,
          data: data,
          message: "URL Launched");
    } catch (exception) {
      return ServiceResult(
          statusCode: StatusCode.expectationFailed,
          data: false,
          message: exception.toString());
    }
  }
}

String? encodeQueryParameters(Map<String, String> params) {
  return params.entries
      .map((MapEntry<String, String> e) =>
          '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
      .join('&');
}
