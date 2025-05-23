import 'package:flutter/material.dart';
import 'package:tencent_calls_uikit/tencent_calls_uikit.dart';

abstract class CallStateCustom {
  TUICallObserver? observer;
  @mustCallSuper
  void cleanState() {}
}

