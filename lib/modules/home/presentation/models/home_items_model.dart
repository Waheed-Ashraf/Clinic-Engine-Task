import 'package:flutter/material.dart';

class HomeItemModel {
  final String itemName;
  final String itemImage;
  final void Function()? itemFunction;

  HomeItemModel(
      {required this.itemName, required this.itemImage, this.itemFunction});
}
