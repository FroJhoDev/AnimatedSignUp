import 'package:flutter/material.dart';

class AnimatedHoverWidget extends StatefulWidget {
  final Widget child;
  final Size size;
  final Color hoverColor;
  final Color bgColor;
  final Offset offset;
  final Curve curve;
  final Duration duration;
  final Border border;

  const AnimatedHoverWidget({
    Key? key,
    required this.child,
    this.size = const Size(440.0, 440.0),
    this.hoverColor = const Color(0xFFFBE851),
    this.bgColor = const Color(0xFFE9EFF3),
    this.offset = const Offset(8, 8),
    this.curve = Curves.easeInOutBack,
    this.duration = const Duration(milliseconds: 400),
    this.border = const Border(),
  }) : super(key: key);

  @override
  State<AnimatedHoverWidget> createState() => _AnimatedHoverWidgetState();
}

class _AnimatedHoverWidgetState extends State<AnimatedHoverWidget> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        width: widget.size.width,
        height: widget.size.height,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      AnimatedPositioned(
        duration: widget.duration,
        curve: widget.curve,
        top: _isHover ? -widget.offset.dy : 0,
        right: _isHover ? widget.offset.dx : 0,
        child: InkWell(
          onTap: () {},
          onHover: (hover) {
            setState(() {
              _isHover = hover;
            });
          },
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          borderRadius: BorderRadius.circular(12.0),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: widget.size.width,
            height: widget.size.height,
            decoration: BoxDecoration(
              color: _isHover ? widget.hoverColor : widget.bgColor,
              borderRadius: BorderRadius.circular(12.0),
              border: widget.border,
            ),
            child: widget.child,
          ),
        ),
      ),
    ]);
  }
}
