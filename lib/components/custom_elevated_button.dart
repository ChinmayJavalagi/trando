import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trando/utils/constants.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String? iconPath; // Make iconPath optional
  final String label;
  final double? width; // Make width optional
  final double? height; // Make height optional
  final double? borderRadius; // Make border radius optional

  const CustomElevatedButton({
    required this.onPressed,
    this.iconPath, // Make iconPath optional
    required this.label,
    this.width, // Make width optional
    this.height, // Make height optional
    this.borderRadius, // Make border radius optional
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: kPrimaryColor, // Adjust the button color as needed
        fixedSize: Size(width ?? 165.0, height ?? 45.0), // Use provided width and height or defaults
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 20.0), // Use provided border radius or default
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (iconPath != null)
            SvgPicture.asset(
              iconPath!,
              height: 24.0, // Adjust the icon height as needed
              width: 24.0, // Adjust the icon width as needed
              color: Colors.white, // Adjust the icon color as needed
            ),
          if (iconPath != null) SizedBox(width: 8.0), // Adjust the spacing between icon and text
          Text(
            label,
            style: TextStyle(
              fontSize: 16.0, // Adjust the text font size as needed
              color: Colors.white, // Adjust the text color as needed
            ),
          ),
        ],
      ),
    );
  }
}