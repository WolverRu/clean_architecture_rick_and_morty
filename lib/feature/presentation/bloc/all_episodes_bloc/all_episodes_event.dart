part of 'all_episodes_bloc.dart';

@freezed
class AllEpisodesEvent with _$AllEpisodesEvent {
  const factory AllEpisodesEvent.fetch({
    required int page,
  }) = AllEpisodesEventFetch;
}
