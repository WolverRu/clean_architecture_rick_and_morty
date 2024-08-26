part of 'all_episodes_bloc.dart';

@freezed
class AllEpisodesState with _$AllEpisodesState {
  const factory AllEpisodesState.loading() = AllEpisodesStateLoading;
  const factory AllEpisodesState.loaded({episode}) = AllEpisodesStateLoaded;
  const factory AllEpisodesState.error({required String message}) =
      AllEpisodesStateError;

  factory AllEpisodesState.fromJson(Map<String, dynamic> json) =>
      _$AllEpisodesStateFromJson(json);
}
