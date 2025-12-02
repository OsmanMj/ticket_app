import 'package:flutter/material.dart';

Color priamry = const Color(0xFF687daf);

class AppStyles {
  // Modern Color Palette
  static Color priamryColor = priamry;
  static Color bgColor = const Color(0xFFF5F7FA);
  static Color textColor = const Color(0xFF2D3142);
  static Color ticketBlue = const Color(0xFF4A5FBF);
  static Color ticketOrange = const Color(0xFFF4511E);
  static Color kakiColor = const Color(0xFFE8B4A0);
  static Color planeColor = const Color(0xFFBFC2DF);
  static Color findTickColor = const Color(0xFF5B6FE8);
  static Color ticketColor = const Color(0xFFFFFFFF);
  static Color dotColor = const Color(0xFF6EC1E4);
  static Color planeSecondColor = const Color(0xFFBACCF7);
  static Color accentColor = const Color(0xFF6C63FF);
  static Color cardShadowColor = const Color(0x1A000000);

  // Modern Gradients
  static LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      const Color(0xFF667EEA),
      const Color(0xFF764BA2),
    ],
  );

  static LinearGradient hotelCardGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      const Color(0xFF6B73FF),
      const Color(0xFF000DFF),
    ],
  );

  static LinearGradient ticketGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      const Color(0xFF4A5FBF),
      const Color(0xFF6B73FF),
    ],
  );

  static LinearGradient orangeGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      const Color(0xFFFF6B6B),
      const Color(0xFFFF8E53),
    ],
  );

  static LinearGradient searchGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      const Color(0xFF667EEA),
      const Color(0xFF764BA2),
    ],
  );

  // Modern Text Styles
  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    color: textColor,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.2,
  );

  static TextStyle headLineStyle1 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    color: textColor,
    letterSpacing: 0.5,
  );

  static TextStyle headLineStyle2 = TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.w600,
    color: textColor,
    letterSpacing: 0.3,
  );

  static TextStyle headLineStyle3 = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
    color: textColor,
    letterSpacing: 0.2,
  );

  static TextStyle headLineStyle4 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.grey.shade600,
    letterSpacing: 0.2,
  );

  // Modern Shadow Styles
  static List<BoxShadow> cardShadow = [
    BoxShadow(
      color: cardShadowColor,
      blurRadius: 20,
      offset: const Offset(0, 10),
      spreadRadius: 0,
    ),
  ];

  static List<BoxShadow> softShadow = [
    BoxShadow(
      color: Colors.black.withOpacity(0.08),
      blurRadius: 15,
      offset: const Offset(0, 5),
      spreadRadius: 0,
    ),
  ];
}
