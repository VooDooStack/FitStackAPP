import 'package:FitStack/presentation/signup/cubit/signup_cubit.dart';
import 'package:FitStack/presentation/signup/presentation/atoms/signup_username_textfield_widget.dart';
import 'package:FitStack/presentation/signup/presentation/molecules/signup_form_header_widget.dart';
import 'package:FitStack/presentation/signup/presentation/molecules/signup_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Personal_Info_Form_View extends StatelessWidget {
  const Personal_Info_Form_View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        SignUp_Form_Header_Widget(
          icon: FontAwesomeIcons.weightScale,
          text: "Personal Data",
          subtitle: "What is your first and last name?",
        ),
        Spacer(flex: 1),
        BlocBuilder<SignupCubit, SignupState>(
          buildWhen: (previous, current) {
            return previous.firstLastName != current.firstLastName;
          },
          builder: (context, state) {
            return SignUp_fullscreen_Textfield_Widget(
              onChanged: (val) {
                BlocProvider.of<SignupCubit>(context).firstLastNameChanged(val);
              },
            );
          },
        ),
        Spacer(flex: 1),
      ],
    );
  }
}