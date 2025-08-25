import 'package:flutter/material.dart';

class CircularProgressWidget extends StatelessWidget {
  final double progress;
  final double size;
  final Color backgroundColor;
  final Color progressColor;
  final double strokeWidth;
  final Widget? child;

  const CircularProgressWidget({
    super.key,
    required this.progress,
    this.size = 120,
    this.backgroundColor = const Color(0xffF3F3F3),
    this.progressColor = Colors.blue,
    this.strokeWidth = 12,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CustomPaint(
        painter: _CircularProgressPainter(
          progress: progress,
          backgroundColor: backgroundColor,
          progressColor: progressColor,
          strokeWidth: strokeWidth,
        ),
        child: Center(child: child),
      ),
    );
  }
}

class _CircularProgressPainter extends CustomPainter {
  final double progress;
  final Color backgroundColor;
  final Color progressColor;
  final double strokeWidth;

  _CircularProgressPainter({
    required this.progress,
    required this.backgroundColor,
    required this.progressColor,
    required this.strokeWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Offset center = size.center(Offset.zero);
    final double radius = (size.width / 2) - strokeWidth / 2;

    /// Base background circle
    final Paint basePaint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;
    canvas.drawCircle(center, radius, basePaint);

    /// Inner shadow effect (darker shade inside stroke)
    final Paint innerShadowPaint = Paint()
      ..shader = RadialGradient(
        colors: [
          Colors.black.withOpacity(0.25), // inner shade
          Colors.transparent,
        ],
        stops: [0.8, 1.0],
      ).createShader(Rect.fromCircle(center: center, radius: radius))
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..blendMode = BlendMode.srcATop;
    canvas.drawCircle(center, radius, innerShadowPaint);

    /// Progress arc
    final Paint progressPaint = Paint()
      ..color = progressColor
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = strokeWidth;
    double sweepAngle = 2 * 3.141592653589793 * progress;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -3.14159 / 2,
      sweepAngle,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant _CircularProgressPainter oldDelegate) {
    return oldDelegate.progress != progress ||
        oldDelegate.backgroundColor != backgroundColor ||
        oldDelegate.progressColor != progressColor ||
        oldDelegate.strokeWidth != strokeWidth;
  }
}
