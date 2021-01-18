import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PartialBorderContainer extends StatelessWidget {
  PartialBorderContainer({
    @required gradient,
    @required this.child,
    @required this.onPressed,
    this.strokeWidth = 4,
    this.padding = 16,
    splashColor,
  }) :
        this.painter = PartialPainter(
            strokeWidth: strokeWidth, gradient: gradient
        ),
        this.splashColor = splashColor ?? gradient.colors.first;
  final PartialPainter painter;
  final Widget child;
  final VoidCallback onPressed;
  final double strokeWidth;
  final double padding;
  final Color splashColor;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: painter,
      child: InkWell(
        highlightColor: Colors.transparent,
        splashColor: splashColor,
        onTap: onPressed,
        child: Container(
            padding: EdgeInsets.all(padding + strokeWidth),
            child: IntrinsicWidth(
                child: child
            )
        ),
      ),
    );
  }
}

class PartialPainter extends CustomPainter {
  PartialPainter({this.strokeWidth, this.gradient});

  final Paint paintObject = Paint();
  final double strokeWidth;
  final Gradient gradient;

  @override
  void paint(Canvas canvas, Size size) {
    Rect topLeftTop = Rect.fromLTRB(0, 0, size.height / 4, strokeWidth);
    Rect topRighttTop = Rect.fromLTRB( size.height / 4, strokeWidth,0,0);
    Rect topLeftLeft = Rect.fromLTRB(0, 0, strokeWidth, size.height / 4);
    Rect topRightRight = Rect.fromLTRB( strokeWidth, size.height / 4,0,0);

    Rect bottomRightBottom = Rect.fromLTRB(size.width - size.height / 4, size.height - strokeWidth, size.width, size.height);
    Rect bottomLeftBottom = Rect.fromLTRB( size.width, size.height,size.width - size.height / 4, size.height - strokeWidth,);
    Rect bottomRightRight = Rect.fromLTRB(size.width - strokeWidth, size.height * 3 / 4, size.width, size.height);
    Rect bottomLefttLeft = Rect.fromLTRB( size.width, size.height,size.width - strokeWidth, size.height * 3 / 4);

    paintObject.shader = gradient.createShader(Offset.zero & size);

    Path topLeftPath = Path()
      ..addRect(topLeftTop)
      ..addRect(topLeftLeft)

    ;
Path topRightPath = Path()
    ..addRect(topRighttTop)
    ..addRect(topRightRight);
    Path bottomRightPath = Path()
      ..addRect(bottomRightBottom)
      ..addRect(bottomRightRight);
    Path bottomLeftPath = Path()
      ..addRect(bottomLeftBottom)
      ..addRect(bottomLefttLeft);

    Path finalPath = Path.combine(PathOperation.union, topLeftPath, bottomRightPath);

    canvas.drawPath(finalPath, paintObject);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}