import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class PaymentMethodModel extends Equatable {
  final String text;
  final Widget icon;
  final int value;
  const PaymentMethodModel(
      {required this.text, required this.icon, required this.value});

  @override
  // TODO: implement props
  List<Object?> get props => [text, icon, value];
}
