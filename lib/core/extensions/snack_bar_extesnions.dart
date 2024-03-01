import 'package:flutter/material.dart';

extension SnackBarExtensions on BuildContext {
  void errorSnackBar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        margin: const EdgeInsets.all(24),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.redAccent,
        content: Text(
          message,
          style: Theme.of(this).textTheme.titleMedium,
        ),
      ),
    );
  }

  void successSnackBar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        margin: const EdgeInsets.all(24),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.green,
        content: Text(
          message,
          style: Theme.of(this).textTheme.titleMedium,
        ),
      ),
    );
  }
}
