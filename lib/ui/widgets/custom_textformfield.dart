import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomTextFormField extends StatefulWidget {
  final String title;
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final String? Function(String?)? validator; // Fungsi validasi tambahan

  const CustomTextFormField({
    Key? key,
    required this.title,
    required this.hintText,
    this.obscureText = false,
    required this.controller,
    this.validator,
  }) : super(key: key);

  @override
  CustomTextFormFieldState createState() => CustomTextFormFieldState();
}

class CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: semiBoldTextStyle.copyWith(
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          TextFormField(
            controller: widget.controller,
            cursorColor: kBlackColor,
            obscureText: widget.obscureText ? _obscureText : false,
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: regularTextStyle.copyWith(
                fontSize: 14,
                color: kSilverColor,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(
                  color: kSilverColor,
                  width: 2,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(
                  color: kPrimaryColor,
                  width: 2,
                ),
              ),
              suffixIcon: widget.obscureText
                  ? IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                        color: kSilverColor,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    )
                  : null,
            ),
            validator: widget.validator, // Gunakan fungsi validator
          ),
          if (widget.validator != null)
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                widget.validator!(widget.controller.text) ?? '',
                style: TextStyle(color: Colors.red),
              ),
            ),
        ],
      ),
    );
  }
}
