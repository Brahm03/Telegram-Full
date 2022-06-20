import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:telegram/core/constants/color/color.dart';
import 'package:telegram/core/constants/font/styles.dart';
import 'package:telegram/core/init/navigator/navigation.dart';
import 'package:telegram/extension/size_extension.dart';
import 'package:telegram/widgets/appbar.dart';

class AuthView extends StatefulWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  TextEditingController phoneController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  String initialCountry = 'US';

  PhoneNumber number = PhoneNumber(isoCode: 'US');

  bool _syncContact = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.kAuthBackground,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              AppBarWidget(
                leading: TextButton(
                  onPressed: () {},
                  child: const Text("Cancel"),
                ),
                trailing: TextButton(
                  onPressed: () => NavigationService.instance.pushNamedAndRemoveUntil('/'),
                  child: const Text("Next"),
                ),
              ),
              const Text(
                "Your Phone",
                style: FontStyles.headline4s,
              ),
              SizedBox(
                height: context.h * 0.04,
              ),
              const Text(
                "Please confirm your country code\nand enter your phone number.",
                textAlign: TextAlign.center,
                style: FontStyles.headline4s,
              ),
              SizedBox(height: context.h * 0.04),
              SvgPicture.asset("assets/images/Country.svg"),
              Form(
                key: formKey,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InternationalPhoneNumberInput(
                        hintText: "Your phone number",
                        onInputChanged: (PhoneNumber number) {
                          print(number.phoneNumber);
                        },
                        onInputValidated: (bool value) {
                          print(value);
                        },
                        selectorConfig: const SelectorConfig(
                            selectorType: PhoneInputSelectorType.BOTTOM_SHEET),
                        ignoreBlank: false,
                        autoValidateMode: AutovalidateMode.disabled,
                        selectorTextStyle:
                            TextStyle(color: ColorConst.kBackgroundDark),
                        initialValue: number,
                        textFieldController: phoneController,
                        formatInput: false,
                        keyboardType: const TextInputType.numberWithOptions(
                            signed: true, decimal: true),
                        inputBorder: const OutlineInputBorder(),
                        onSaved: (PhoneNumber number) {
                          print("On Saved: $number");
                          debugPrint("$initialCountry");
                        },
                      ),
                      SwitchListTile(
                        title: Text("Sync Contacts",style: FontStyles.headline4s,),
                          value: _syncContact,
                          onChanged: (bool value) {
                            setState(() {
                              _syncContact = value;
                            });
                          })
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
