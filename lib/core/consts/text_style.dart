import 'package:doover_test_project/core/consts/font_weight.dart';
import 'package:flutter/material.dart';

class DooverTextStyle {
  static const TextStyle kAppBarTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: DooverFontWeight.kSemiBoldFontWeight,
  );

  static const TextStyle kPostTitleTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: DooverFontWeight.kRegularFontWeight,
  );

  static const TextStyle kPostBodyTextStyle = TextStyle(
    color: Colors.white70,
    fontSize: 14,
    fontWeight: DooverFontWeight.kRegularFontWeight,
  );

  static const TextStyle kDetailedPostTitleTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: DooverFontWeight.kSemiBoldFontWeight,
  );

  static const TextStyle kDetailedPostBodyTextStyle = TextStyle(
    color: Colors.white70,
    fontSize: 12,
    fontWeight: DooverFontWeight.kMediumFontWeight,
  );

  static const TextStyle kCommentAuthorTextStyle = kDetailedPostTitleTextStyle;

  static const TextStyle kCommentBodyTextStyle = kPostBodyTextStyle;

// TODO: Добавить стили текста всех модулей, помимо модуля постов
}
