import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class CustomTextStyles {
  /// Title text styles
  static final title = GoogleFonts.roboto(
    color: Colors.black,
    fontSize: 32,
    fontWeight: FontWeight.w500,
    height: 1.6,
  );
  static final titleBold = GoogleFonts.roboto(
    color: CustomColors.black,
    fontSize: 32,
    fontWeight: FontWeight.w700,
    height: 1.6,
  );

  static final body = GoogleFonts.roboto(
    color: CustomColors.black,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    height: 1.6,
  );
  static final bodyBold = GoogleFonts.roboto(
    color: CustomColors.black,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    height: 1.6,
  );

  static final small = GoogleFonts.roboto(
    color: CustomColors.black,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.6,
  );
  static final smallSelected = GoogleFonts.roboto(
    color: CustomColors.primaryBlue,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.6,
  );
  static final smallBold = GoogleFonts.roboto(
    color: CustomColors.black,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    height: 1.6,
  );
}
