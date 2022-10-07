import 'package:flutter/material.dart';

class BackAndForthAnimationWrapper extends StatefulWidget {
  final Widget child;
  const BackAndForthAnimationWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);
  @override
  State<BackAndForthAnimationWrapper> createState() =>
      _BackAndForthAnimationWrapperState();
}

class _BackAndForthAnimationWrapperState
    extends State<BackAndForthAnimationWrapper> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 350))
      ..repeat(
        reverse: true,
      );
    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.bounceInOut,
    );
  }

  @override
  void dispose() {
    controller.stop();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (c, child) {
        var t = animation.value;
        return Transform.translate(
          offset: Offset((-2 * (1 - t)) + (2 * t), 0),
          child: child,
        );
      },
      child: widget.child,
    );
  }
}
