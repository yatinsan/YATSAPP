import 'package:flutter/material.dart';

class Avathardp extends StatelessWidget {
  const Avathardp({
    Key? key,
    required this.url,
    required this.shape,
  }) : super(key: key);

  final String url;
  final BorderRadius shape;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: shape,
      child: Image.asset(
        'assets/avathar/' + url + '.jpg',
        width: 50,
        height: 50,
      ),
    );
  }
}
