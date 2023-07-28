
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FaceIconWidget extends StatefulWidget {
  const FaceIconWidget({super.key});

  @override
  State<FaceIconWidget> createState() => _FaceIconWidgetState();
}

class _FaceIconWidgetState extends State<FaceIconWidget>{
  @override
  Widget build(BuildContext context) {
    return Animate(
      onPlay: (controller){
        controller..repeat();
      },
      effects: [TintEffect(duration: 2000.ms)],
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white,width: 1),
            borderRadius: BorderRadius.circular(5)
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: SvgPicture.asset(
            'assets/icons/smile_eye_right.svg',
            color: Colors.white70,
          ),
        ),
      ),
    );
  }
}
