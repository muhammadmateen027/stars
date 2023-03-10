import 'package:stars/pages/pages.dart';
import 'package:stars/redux/data_state.dart';

SpaceXLaunchesState spaceXReducer(
  final SpaceXLaunchesState state,
  final dynamic action,
) {
  if (action is FetchLaunchesSucceededAction) {
    return state.copyWith(
      launches: action.launches,
      launchesState: const DataState.full(),
    );
  } else if (action is FetchLaunchesFailedAction) {
    return state.copyWith(
      launchesState: DataState.error(action.exception),
    );
  } else if (action is RefreshLaunchesAction) {
    return state.refreshState();
  }

  return state;
}
