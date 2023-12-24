import 'package:flutter/material.dart';

class WaveClipper extends CustomClipper<Path> {
  final double waveHeight; // 파도의 높이를 조정하기 위한 변수

  WaveClipper({this.waveHeight = 30.0}); // 기본 파도 높이는 30.0으로 설정

  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height); // 왼쪽 아래 모서리로 이동

    // 파도 모양의 클리핑 경로 그리기
    final firstControlPoint =
        Offset(size.width * 0.25, size.height - waveHeight);
    final firstEndPoint =
        Offset(size.width * 0.5, size.height - waveHeight * 2);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    final secondControlPoint =
        Offset(size.width * 0.75, size.height - waveHeight * 3);
    final secondEndPoint = Offset(size.width, size.height - waveHeight);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height); // 오른쪽 아래 모서리로 이동
    path.lineTo(size.width, 0); // 오른쪽 위 모서리로 이동
    path.close(); // 경로를 닫아줌

    return path;
  }

  @override
  bool shouldReclip(WaveClipper oldClipper) => false;
}
