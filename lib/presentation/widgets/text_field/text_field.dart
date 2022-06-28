import 'package:algoriza_task1_onboarding_login_register_app/presentation/presentation.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final String hint;
  final TextInputType keyboardType;
  final bool isPhoneNumber;

  const CustomTextField({
    Key? key,
    required this.title,
    required this.hint,
    required this.keyboardType,
    this.isPhoneNumber = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: title,
            color: MyColors.grey,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          const SizedBox(height: 10),
          TextField(
            keyboardType: keyboardType,
            decoration: InputDecoration(
              prefixIcon: isPhoneNumber
                  ? SizedBox(
                      width: 96,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CountryCodePicker(
                            padding: const EdgeInsets.only(left: 8.0),
                            showDropDownButton: false,
                            onChanged: print,
                            initialSelection: 'EG',
                            favorite: const ['+20', 'EG'],
                            showCountryOnly: false,
                            showOnlyCountryWhenClosed: false,
                            alignLeft: false,
                            showFlag: false,
                          ),
                          Icon(
                            Icons.arrow_drop_down_rounded,
                            color: MyColors.black,
                          ),
                          const SizedBox(width: 4.0),
                        ],
                      ),
                    )
                  : null,
              border: const OutlineInputBorder(),
              hintText: hint,
              hintStyle: TextStyle(color: MyColors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
