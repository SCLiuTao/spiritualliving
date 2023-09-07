import 'package:flutter/material.dart';
import 'package:spiritualliving/common/config.dart';

class FormHelper {
  static Widget textInput({
    required TextEditingController controller,
    IconData? icon,
    required String labelText,
    TextInputType? keyboardType = TextInputType.text,
    FormFieldValidator<String>? validator,
    Widget? suffixIcon,
    bool? obscureText = false,
    int? maxLines = 1,
    bool? floatingLabelBehavior = true,
    TextInputAction? textInputAction = TextInputAction.next,
    void Function(String)? onChanged,
    void Function()? onTap,
    void Function(String?)? onSaved,
    bool readOnly = false,
    void Function(String)? onFieldSubmitted,
  }) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textInputAction: textInputAction,
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText!,
      style: const TextStyle(fontSize: 18.0),
      decoration: InputDecoration(
        errorStyle: const TextStyle(fontSize: 14),
        suffixIcon: suffixIcon,
        labelText: labelText,
        //hintText: labelText,
        hintStyle: const TextStyle(fontSize: 16),
        labelStyle: const TextStyle(fontSize: 16),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey[300]!),
        ),
        // floatingLabelBehavior:
        //     floatingLabelBehavior == true ? FloatingLabelBehavior.never : null,
      ),
      validator: validator,
      maxLines: maxLines,
      onChanged: onChanged,
      onTap: onTap,
      onSaved: onSaved,
      onFieldSubmitted: onFieldSubmitted,
      readOnly: readOnly,
    );
  }

  static Container submitUIButton(BuildContext context,
      {required String title,
      Widget? icon,
      Function()? onTap,
      Color? color,
      Color? textColor}) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: Config.buttonHeight,
      margin: const EdgeInsets.fromLTRB(0, 8, 0, 8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
      child: ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.black26;
              }
              return color ?? Colors.white.withOpacity(.9);
            }),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null)
              Flexible(
                flex: 3,
                child: Container(
                  alignment: Alignment.centerRight,
                  child: icon,
                ),
              ),
            if (icon != null)
              const SizedBox(
                width: 15,
              ),
            Flexible(
              flex: 5,
              child: Container(
                alignment:
                    icon != null ? Alignment.centerLeft : Alignment.center,
                child: Text(
                  title,
                  style: TextStyle(
                      color: textColor ?? Colors.white.withOpacity(.9),
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static DropdownButtonFormField dropdownInput(
      {required String labelText,
      IconData? prefixIcon,
      required List<DropdownMenuItem<dynamic>> items,
      required void Function(dynamic)? onChanged,
      String? Function(dynamic)? validator}) {
    return DropdownButtonFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      dropdownColor: Colors.grey[800],
      iconEnabledColor: Colors.white,
      iconDisabledColor: Colors.grey[800],
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(18),
        prefixIcon: Icon(
          prefixIcon,
          size: 30,
          color: Colors.white.withOpacity(.9),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        errorStyle:
            const TextStyle(color: Color.fromARGB(255, 97, 8, 2), fontSize: 16),
        labelText: labelText,
        labelStyle:
            TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 16),
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: Colors.white.withOpacity(0.3),
      ),
      style: const TextStyle(color: Colors.white),
      items: items,
      onChanged: onChanged,
      validator: validator,
    );
  }
}
