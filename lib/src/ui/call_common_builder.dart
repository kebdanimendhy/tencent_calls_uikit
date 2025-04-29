import 'package:flutter/material.dart';

class CallCommonBuilders {
  ///
  /// 视频通话-拨打者-拨打中-下部按钮层
  /// 提供有4个基础的按钮
  /// 会覆盖掉以下4个按钮的builder
  /// [switchCameraButtonBuilder]
  /// [hangupButtonBuilder]
  /// [cameraControlButtonBuilder]
  /// [virtualBackgroundButtonBuilder]
  ///
  final Widget Function({
    required Function handleSwitchCamera,
    required Function handleHangup,
    required Function handleOpenCloseCamera,
    required Function handleOpenBlurBackground,
  })? videoCallerWaitingViewBuilder;

  ////
  /// 视频通话-单人-通话中(拨打者和接听者)-下部按钮层
  /// 提供6个基础按钮功能
  /// 覆盖掉以下6个按钮的builder
  /// [micControlButtonBuilder]
  /// [speakerphoneButtonBuidler]
  /// [cameraControlButtonBuilder]
  /// [virtualBackgroundSmallButtonBuilder]
  /// [hangupButtonBuilder]
  /// [switchCameraSmallButtonBuilder]
  ///
  final Widget Function({
    required Function handleSwitchMic, // 麦克风开关
    required Function handleSwitchAudioDevice, //扬声器开关
    required Function handleOpenCloseCamera, //摄像头开关
    required Function handleOpenBlurBackground, // 虚化开关
    required Function handleHangup, //  挂断
    required Function handleSwitchCamera, // 摄像头翻转
  })? videoCallerAndCalleeAcceptedViewBuilder;

  // 切换摄像头前后按钮
  final Widget Function(Function handleSwitchCamera)? switchCameraButtonBuilder;
  // 切换摄像头前后按钮-小
  final Widget Function(Function handleSwitchCamera)? switchCameraSmallButtonBuilder;
  // 挂断按钮
  final Widget Function(Function handleHangup)? hangupButtonBuilder;
  // 摄像头开关
  final Widget Function(Function handleOpenCloseCamera)? cameraControlButtonBuilder;
  // 麦克风开关
  final Widget Function(Function handleSwitchMic)? micControlButtonBuilder;
  // 扬声器开关
  final Widget Function(Function handleSwitchAudioDevice)? speakerphoneButtonBuidler;
  // 模糊背景-开关
  final Widget Function(Function handleOpenBlurBackground)? virtualBackgroundButtonBuilder;
  // 模糊背景-开关-小
  final Widget Function(Function handleOpenBlurBackground)? virtualBackgroundSmallButtonBuilder;

  ///
  /// 音视频通话-接听者-拨打中-下部按钮层
  /// 提供有2个基础的按钮
  /// 会覆盖掉以下2个按钮的builder
  /// [calleeWaitingHangupButtonBuilder]
  /// [calleeWaitingAcceptButtonBuilder]
  ///
  final Widget Function({
    required Function handleReject,
    required Function handleAccept,
  })? calleeWaitingViewBuilder;
  // 音视频通话-接听者-拨打中-挂断按钮
  final Widget Function(Function handleReject)? calleeWaitingHangupButtonBuilder;
  // 音视频通话-接听者-拨打中-接听按钮
  final Widget Function(Function handleAccept)? calleeWaitingAcceptButtonBuilder;

  ////
  // 单人-拨打中-背景builder
  final Widget Function(String avatar)? individualUserWaitingBackgroundBuilder;
  // 单人-拨打中-头像Builder
  final Widget Function(String avatar)? individualUserWaitingUserAvatarBuilder;
  // 单人-拨打中-描述Builder-(显示在用户名下面)
  final Widget Function()? individualUserWaitingDescBuilder;

  //拨打中-顶部悬浮按钮
  final Widget Function(Function openFloatWindow)? floatWindowBuilder;

  CallCommonBuilders({
    this.videoCallerWaitingViewBuilder,
    this.switchCameraButtonBuilder,
    this.switchCameraSmallButtonBuilder,
    this.hangupButtonBuilder,
    this.cameraControlButtonBuilder,
    this.micControlButtonBuilder,
    this.speakerphoneButtonBuidler,
    this.virtualBackgroundButtonBuilder,
    this.virtualBackgroundSmallButtonBuilder,
    this.calleeWaitingViewBuilder,
    this.calleeWaitingHangupButtonBuilder,
    this.calleeWaitingAcceptButtonBuilder,
    this.individualUserWaitingBackgroundBuilder,
    this.individualUserWaitingUserAvatarBuilder,
    this.individualUserWaitingDescBuilder,
    this.floatWindowBuilder,
    this.videoCallerAndCalleeAcceptedViewBuilder,
  });
}
