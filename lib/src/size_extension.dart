import 'dart:math';

import 'package:flutter/material.dart';

import 'screen_util.dart';

extension SizeExtension on num {
  ///[ScreenUtil.setWidth]
  double get ww => ScreenUtil().setWidth(this);

  ///[ScreenUtil.setHeight]
  double get hh => ScreenUtil().setHeight(this);

  ///[ScreenUtil.radius]
  double get rr => ScreenUtil().radius(this);

  ///[ScreenUtil.setSp]
  double get ssp => ScreenUtil().setSp(this);

  ///smart size :  it check your value - if it is bigger than your value it will set your value
  ///for example, you have set 16.sm() , if for your screen 16.sp() is bigger than 16 , then it will set 16 not 16.sp()
  ///I think that it is good for save size balance on big sizes of screen
  double get spMin => min(toDouble(), ssp);

  @Deprecated('use spMin instead')
  double get sm => min(toDouble(), ssp);

  double get spMax => max(toDouble(), ssp);

  ///屏幕宽度的倍数
  ///Multiple of screen width
  double get sw => ScreenUtil().screenWidth * this;

  ///屏幕高度的倍数
  ///Multiple of screen height
  double get sh => ScreenUtil().screenHeight * this;

  ///[ScreenUtil.setHeight]
  Widget get verticalSpace => ScreenUtil().setVerticalSpacing(this);

  ///[ScreenUtil.setVerticalSpacingFromWidth]
  Widget get verticalSpaceFromWidth =>
      ScreenUtil().setVerticalSpacingFromWidth(this);

  ///[ScreenUtil.setWidth]
  Widget get horizontalSpace => ScreenUtil().setHorizontalSpacing(this);

  ///[ScreenUtil.radius]
  Widget get horizontalSpaceRadius =>
      ScreenUtil().setHorizontalSpacingRadius(this);

  ///[ScreenUtil.radius]
  Widget get verticalSpacingRadius =>
      ScreenUtil().setVerticalSpacingRadius(this);
}

extension EdgeInsetsExtension on EdgeInsets {
  /// Creates adapt insets using r [SizeExtension].
  EdgeInsets get r => copyWith(
        top: top.rr,
        bottom: bottom.rr,
        right: right.rr,
        left: left.rr,
      );

  EdgeInsets get w => copyWith(
        top: top.ww,
        bottom: bottom.ww,
        right: right.ww,
        left: left.ww,
      );

  EdgeInsets get h => copyWith(
        top: top.hh,
        bottom: bottom.hh,
        right: right.hh,
        left: left.hh,
      );
}

extension BorderRaduisExtension on BorderRadius {
  /// Creates adapt BorderRadius using r [SizeExtension].
  BorderRadius get r => copyWith(
        bottomLeft: bottomLeft.rr,
        bottomRight: bottomRight.rr,
        topLeft: topLeft.rr,
        topRight: topRight.rr,
      );

  BorderRadius get w => copyWith(
        bottomLeft: bottomLeft.ww,
        bottomRight: bottomRight.ww,
        topLeft: topLeft.ww,
        topRight: topRight.ww,
      );

  BorderRadius get h => copyWith(
        bottomLeft: bottomLeft.h,
        bottomRight: bottomRight.h,
        topLeft: topLeft.h,
        topRight: topRight.h,
      );
}

extension RaduisExtension on Radius {
  /// Creates adapt Radius using r [SizeExtension].
  Radius get r => Radius.elliptical(x.rr, y.rr);

  Radius get w => Radius.elliptical(x.ww, y.ww);

  Radius get h => Radius.elliptical(x.ww, y.ww);
}

extension BoxConstraintsExtension on BoxConstraints {
  /// Creates adapt BoxConstraints using r [SizeExtension].
  BoxConstraints get r => this.copyWith(
        maxHeight: maxHeight.rr,
        maxWidth: maxWidth.rr,
        minHeight: minHeight.rr,
        minWidth: minWidth.rr,
      );

  /// Creates adapt BoxConstraints using h-w [SizeExtension].
  BoxConstraints get hw => this.copyWith(
        maxHeight: maxHeight.ww,
        maxWidth: maxWidth.ww,
        minHeight: minHeight.ww,
        minWidth: minWidth.ww,
      );

  BoxConstraints get w => this.copyWith(
        maxHeight: maxHeight.ww,
        maxWidth: maxWidth.ww,
        minHeight: minHeight.ww,
        minWidth: minWidth.ww,
      );

  BoxConstraints get h => this.copyWith(
        maxHeight: maxHeight.ww,
        maxWidth: maxWidth.ww,
        minHeight: minHeight.ww,
        minWidth: minWidth.ww,
      );
}
