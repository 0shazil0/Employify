import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'bottom_nav_bar_model.dart';
export 'bottom_nav_bar_model.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({
    super.key,
    int? selectedPageIndex,
    bool? hidden,
    bool? showCenteralButton,
    this.onTapCentrButton,
  })  : selectedPageIndex = selectedPageIndex ?? 1,
        hidden = hidden ?? false,
        showCenteralButton = showCenteralButton ?? false;

  final int selectedPageIndex;
  final bool hidden;
  final bool showCenteralButton;
  final Future Function()? onTapCentrButton;

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget>
    with TickerProviderStateMixin {
  late BottomNavBarModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomNavBarModel());

    animationsMap.addAll({
      'dividerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: const Offset(0.6, 1.0),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'dividerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: const Offset(0.6, 1.0),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'dividerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: const Offset(0.6, 1.0),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'dividerOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: const Offset(0.6, 1.0),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.0, 4.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 1.0),
      child: Stack(
        alignment: const AlignmentDirectional(0.0, 0.0),
        children: [
          if (widget.hidden == false)
            Align(
              alignment: const AlignmentDirectional(0.0, 1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
                child: Material(
                  color: Colors.transparent,
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Container(
                    width: 360.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0xFF03145D),
                          offset: Offset(
                            1.0,
                            1.0,
                          ),
                          spreadRadius: 1.0,
                        )
                      ],
                      gradient: const LinearGradient(
                        colors: [Color(0xFF37068E), Color(0xFF03145D)],
                        stops: [0.0, 1.0],
                        begin: AlignmentDirectional(1.0, -1.0),
                        end: AlignmentDirectional(-1.0, 1.0),
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                      shape: BoxShape.rectangle,
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 1.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Opacity(
                                  opacity:
                                      widget.selectedPageIndex == 1 ? 1.0 : 0.5,
                                  child: FlutterFlowIconButton(
                                    borderRadius: 30.0,
                                    borderWidth: 0.0,
                                    buttonSize: 50.0,
                                    icon: const Icon(
                                      Icons.cottage_outlined,
                                      color: Color(0xFFF7FAFC),
                                      size: 24.0,
                                    ),
                                    onPressed: () async {
                                      context.goNamed(
                                        'HomePage',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: const TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                          ),
                                        },
                                      );
                                    },
                                  ),
                                ),
                                if (widget.selectedPageIndex == 1)
                                  const SizedBox(
                                    width: 30.0,
                                    child: Divider(
                                      height: 2.0,
                                      thickness: 2.0,
                                      color: Color(0xFFF7FAFC),
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'dividerOnPageLoadAnimation1']!),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Opacity(
                                opacity:
                                    widget.selectedPageIndex == 2 ? 1.0 : 0.5,
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  borderWidth: 0.0,
                                  buttonSize: 50.0,
                                  icon: const Icon(
                                    Icons.message_outlined,
                                    color: Color(0xFFF7FAFC),
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed('Messages');
                                  },
                                ),
                              ),
                              if (widget.selectedPageIndex == 2)
                                const SizedBox(
                                  width: 30.0,
                                  child: Divider(
                                    height: 2.0,
                                    thickness: 2.0,
                                    color: Color(0xFFF7FAFC),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'dividerOnPageLoadAnimation2']!),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Opacity(
                                opacity:
                                    widget.selectedPageIndex == 3 ? 1.0 : 0.5,
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  borderWidth: 0.0,
                                  buttonSize: 50.0,
                                  icon: const Icon(
                                    Icons.person_outline_rounded,
                                    color: Color(0xFFF7FAFC),
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed('auth_2_Profile');
                                  },
                                ),
                              ),
                              if (widget.selectedPageIndex == 3)
                                const SizedBox(
                                  width: 30.0,
                                  child: Divider(
                                    height: 2.0,
                                    thickness: 2.0,
                                    color: Color(0xFFF7FAFC),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'dividerOnPageLoadAnimation3']!),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Opacity(
                                opacity:
                                    widget.selectedPageIndex == 4 ? 1.0 : 0.5,
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  borderWidth: 0.0,
                                  buttonSize: 50.0,
                                  icon: const Icon(
                                    Icons.notifications_active,
                                    color: Color(0xFFF7FAFC),
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed('Notifications');
                                  },
                                ),
                              ),
                              if (widget.selectedPageIndex == 4)
                                const SizedBox(
                                  width: 30.0,
                                  child: Divider(
                                    height: 2.0,
                                    thickness: 2.0,
                                    color: Color(0xFFF7FAFC),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'dividerOnPageLoadAnimation4']!),
                            ],
                          ),
                        ]
                            .divide(const SizedBox(width: 16.0))
                            .addToStart(const SizedBox(width: 16.0))
                            .addToEnd(const SizedBox(width: 16.0)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          Align(
            alignment: const AlignmentDirectional(0.0, 1.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 39.0),
              child: ClipOval(
                child: Container(
                  width: 70.0,
                  height: 70.0,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF03145D), Color(0xFF37068E)],
                      stops: [0.0, 1.0],
                      begin: AlignmentDirectional(0.0, -1.0),
                      end: AlignmentDirectional(0, 1.0),
                    ),
                    shape: BoxShape.circle,
                  ),
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    hoverColor: const Color(0xFF03145D),
                    icon: const Icon(
                      Icons.add,
                      color: Color(0xFFF7FAFC),
                      size: 24.0,
                    ),
                    onPressed: () {
                      print('CenterIconButton pressed ...');
                    },
                  ),
                ),
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation']!),
            ),
          ),
        ],
      ),
    );
  }
}
