import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_space/Helpers/Styles/style.dart';
import 'package:my_space/bloc/phone_mail_service_bloc/phone_mail_service_bloc.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PhoneMailServiceBloc, PhoneMailServiceState>(
      listener: (context, state) {
        if (state is ServiceLaunchSuccessful) {
          print(state.successMessage);
        } else if (state is ServiceLaunchUnsuccessful) {
          print(state.error);
        }
      },
      builder: (context, state) {
        return Column(
          children: [
            const Text(
              "Get in touch",
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const Text("Phone: "),
                GestureDetector(
                    onTap: () {
                      context.read<PhoneMailServiceBloc>().add(
                          LaunchService(scheme: "tel", data: "+919790306585"));
                    },
                    behavior: HitTestBehavior.translucent,
                    child: const Text(
                      "+91 9790306585",
                      style: TextStyle(color: CustomColors.blueColor),
                    ))
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const Text("Mail at: "),
                GestureDetector(
                    onTap: () {},
                    behavior: HitTestBehavior.translucent,
                    child: const Text(
                      "dheenul813@gmail.com",
                      style: TextStyle(color: CustomColors.blueColor),
                    ))
              ],
            ),
          ],
        );
      },
    );
  }
}
