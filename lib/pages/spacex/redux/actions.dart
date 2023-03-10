import 'package:stars/pages/spacex/spacex.dart';
import 'package:stars/redux/actions.dart';

class FetchLaunchesAction extends Action {
  const FetchLaunchesAction();

  @override
  String toString() => 'FetchLaunchesAction';
}

class RefreshLaunchesAction extends Action {
  const RefreshLaunchesAction();

  @override
  String toString() => 'FetchLaunchesAction';
}

class FetchLaunchesSucceededAction extends Action {
  const FetchLaunchesSucceededAction(this.launches);

  final Set<LaunchItem> launches;

  @override
  String toString() => 'FetchLaunchesSucceededAction{launches: $launches}';
}

class FetchLaunchesFailedAction extends ExceptionAction {
  const FetchLaunchesFailedAction(
    final Object exception, [
    final StackTrace? stackTrace,
  ]) : super(exception, stackTrace);
}
