// ignore_for_file: public_member_api_docs, inference_failure_on_function_return_type

import 'package:flutter/material.dart';
// import 'package:kartal/kartal.dart';

class CustomImageButton extends StatelessWidget {
  const CustomImageButton({
    required this.image,
    this.text,
    super.key,
    this.onTap,
  });

  final Function()? onTap;
  final Image image;
  final Text? text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.grey,
            width: 2,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 8),
            Expanded(child: image),
            const SizedBox(height: 8),
            text ??
                const SizedBox(
                  height: 1,
                )
          ],
        ),
      ),
    );
  }
}
