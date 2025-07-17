import 'package:flutter/material.dart';

Future<T?> showFloatingCenteredDialog<T>({
  required BuildContext context,
  required String title,
  required String message,
  IconData icon = Icons.info_outline,
  Color iconColor = const Color(0xFF4361EE),
  Color backgroundColor = Colors.white,
  double maxHeightFraction = 1,
  double maxWidth = 480,
  double borderRadius = 24,
  Widget? action,
}) {
  return showGeneralDialog<T>(
    context: context,
    barrierDismissible: true,
    barrierLabel: 'Dismiss',
    barrierColor: Colors.black54,
    transitionDuration: const Duration(milliseconds: 300),
    pageBuilder: (_, __, ___) => const SizedBox.shrink(),
    transitionBuilder: (context, animation, secondaryAnimation, _) {
      final curved = CurvedAnimation(parent: animation, curve: Curves.easeOut);

      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, 1),
          end: Offset.zero,
        ).animate(curved),
        child: Align(
          child: Material(
            color: backgroundColor,
            elevation: 20,
            borderRadius: BorderRadius.circular(borderRadius),
            clipBehavior: Clip.antiAlias,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * maxHeightFraction,
                maxWidth: maxWidth,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      backgroundColor: iconColor.withAlpha(30),
                      radius: 32,
                      child: Icon(icon, size: 36, color: iconColor),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      message,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.grey[700],
                          ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    action ??
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: iconColor,
                            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () => Navigator.pop(context),
                          child: const Text('Got it'),
                        ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}
