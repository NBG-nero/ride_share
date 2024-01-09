import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatefulWidget {
  // final String? label;
  final VoidCallback? onPressed;
  final Color? bgColor;
  final Widget? child;
  final Color? textColor;
  final double? width;
  final double? height;
  final double? fontSize;
  final double? padding;
  final ShapeBorder? shape;
  final BoxShape? containerShape;
  final EdgeInsetsGeometry? contentPadding;
  final Color? borderColor;
  final double? borderSize;
  final double? marginTop;
  final double buttonElevation;
  final BorderRadius? borderRadius;
  final bool useGradient;
  final bool isBusy;
  final Color? progressIndicatorColor;
  final Color? disabledColor;
  final Color? disabledTextColor;

  const CustomButton({
    Key? key,
    required this.onPressed,
    this.bgColor,
    this.child,
    this.textColor = Colors.white,
    this.width = double.infinity,
    this.height,
    this.fontSize = 15,
    this.padding = 10.0,
    this.shape,
    this.containerShape,
    this.contentPadding,
    this.borderColor,
    this.borderSize,
    this.marginTop = 20.0,
    this.buttonElevation = 0.0,
    this.borderRadius,
    this.useGradient = true,
    this.isBusy = false,
    this.progressIndicatorColor,
    this.disabledColor,
    this.disabledTextColor,
  }) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: widget.marginTop ?? 0.0,
      ),
      child: Material(
        elevation: widget.buttonElevation,
        color: Colors.transparent,
        borderRadius:
            widget.borderRadius ?? BorderRadius.all(Radius.circular(36.r)),
        child: Container(
            height: widget.height ?? 45.0.h,
            width: widget.width ?? double.infinity,
            decoration: BoxDecoration(
              // gradient: useGradient ? gradient : null,
              color: Colors.black,
              shape: widget.containerShape ?? BoxShape.rectangle,
              border: widget.borderColor == null
                  ? const Border()
                  : Border.all(
                      width: widget.borderSize ?? 1,
                      color: widget.borderColor ?? Colors.transparent,
                    ),
              borderRadius: widget.containerShape == BoxShape.circle
                  ? null
                  : widget.borderRadius ??
                      BorderRadius.all(
                        Radius.circular(10.r),
                      ),
            ),
            child: MaterialButton(
              disabledTextColor: widget.disabledTextColor ?? Colors.white,
              disabledColor: widget.disabledColor ?? Colors.black,
              enableFeedback: false,
              padding: widget.contentPadding ?? EdgeInsets.all(widget.padding ?? 0.0),
              elevation: 0,
              color: widget.bgColor ?? Theme.of(context).primaryColor,
              shape: widget.shape ??
                  RoundedRectangleBorder(
                    borderRadius: widget.borderRadius ??
                        BorderRadius.all(
                          Radius.circular(10.r),
                        ),
                  ),
              onPressed: widget.onPressed,
              child: widget.isBusy
                  ? _busyStateWidget
                  : widget.child ?? Container(),
            )),
      ),
    );
  }

  Widget get _busyStateWidget => SizedBox(
        height: 32,
        width: 36,
        child: CircularProgressIndicator(
          color: widget.progressIndicatorColor ?? Colors.white,
        ),
      );
}
