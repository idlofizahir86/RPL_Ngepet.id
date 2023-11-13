import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      height: 50,
      child: TextFormField(
        cursorColor: kBlackColor,
        decoration: InputDecoration(
          hintText: "Temukan makanan, dokter, dll",
          hintStyle: regularTextStyle.copyWith(
            fontSize: 14,
            color: kSilverColor,
          ),
          prefixIcon: Image.asset("assets/icons/icon_search.png"),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(
              color: kSilverColor,
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(
              color: kPrimaryColor,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
