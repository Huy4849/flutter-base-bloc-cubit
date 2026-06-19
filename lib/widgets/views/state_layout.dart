import 'package:bnv_opendata/data/exception/app_exception.dart';
import 'package:bnv_opendata/widgets/dialog/cupertino_loading.dart';
import 'package:bnv_opendata/widgets/dialog/modal_progress_hud.dart';
import 'package:bnv_opendata/widgets/views/empty_view.dart';
import 'package:bnv_opendata/widgets/views/state_error_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum StateLayout { showContent, showLoading, showError, showEmpty }

class StateFullLayout extends StatelessWidget {
  final StateLayout _stateLayout;
  final Widget _child;

  final AppException _error;
  final Function() _retry;
  final dynamic _textEmpty;
  final Widget? _shimmerLoading;

  const StateFullLayout(
      {Key? key,
      required StateLayout stateLayout,
      required Widget child,
      required AppException error,
      required Function() retry,
      required dynamic textEmpty,
      Widget? shimmerLoading})
      : _stateLayout = stateLayout,
        _error = error,
        _child = child,
        _retry = retry,
        _textEmpty = textEmpty,
        _shimmerLoading = shimmerLoading,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    if (_stateLayout == StateLayout.showError) {
      return StateErrorView(_error.message, _retry);
    }
    if (_stateLayout == StateLayout.showEmpty) {
      if (_textEmpty is Widget) return _textEmpty as Widget;
      return EmptyView(_textEmpty.toString());
    }
    if (_stateLayout == StateLayout.showLoading && _shimmerLoading != null) {
      return _shimmerLoading!;
    }
    return ModalProgressHUD(
      inAsyncCall: _stateLayout == StateLayout.showLoading,
      progressIndicator: const CupertinoLoading(),
      child: _child,
    );
  }
}
