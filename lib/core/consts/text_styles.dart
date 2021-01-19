import 'package:doover_test_project/core/consts/font_weights.dart';
import 'package:flutter/material.dart';

class DooverTextStyles {
  static const TextStyle kCommentAuthorTextStyle = kDetailedPostTitleTextStyle;

  static const TextStyle kCommentBodyTextStyle = kPostBodyTextStyle;

  static const TextStyle kPhotoTitleTextStyle = kAlbumDescriptionTextStyle;

  static const TextStyle kTodoTextStyle = kPostTitleTextStyle;

  static const TextStyle kContactFullNameTextStyle = kPostTitleTextStyle;

  static const TextStyle kContactCredentialBodyTextStyle = kPostTitleTextStyle;

  static const TextStyle kAppBarTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: DooverFontWeights.kSemiBoldFontWeight,
  );

  static const TextStyle kPostTitleTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: DooverFontWeights.kRegularFontWeight,
  );

  static const TextStyle kPostBodyTextStyle = TextStyle(
    color: Colors.white70,
    fontSize: 14,
    fontWeight: DooverFontWeights.kRegularFontWeight,
  );

  static const TextStyle kDetailedPostTitleTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: DooverFontWeights.kSemiBoldFontWeight,
  );

  static const TextStyle kDetailedPostBodyTextStyle = TextStyle(
    color: Colors.white70,
    fontSize: 12,
    fontWeight: DooverFontWeights.kMediumFontWeight,
  );

  static const TextStyle kAlbumTitleTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontWeight: DooverFontWeights.kMediumFontWeight,
  );

  static const TextStyle kAlbumDescriptionTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 12,
    fontWeight: DooverFontWeights.kMediumFontWeight,
  );

  static const TextStyle kContactCredentialTitleTextStyle = TextStyle(
    color: Color(0xFF7F78A7), // TODO: Create colors consts
    fontSize: 12,
    fontWeight: DooverFontWeights.kMediumFontWeight,
  );

  static const TextStyle kContactNickTextStyle = TextStyle(
    color: Color(0xFF6C63FF),
    fontSize: 12,
    fontWeight: DooverFontWeights.kMediumFontWeight,
  );
}
