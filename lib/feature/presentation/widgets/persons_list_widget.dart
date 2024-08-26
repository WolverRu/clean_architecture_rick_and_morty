import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/common/app_colors.dart';
import 'package:rick_and_morty/feature/domain/entities/all_episode_entity.dart';
import 'package:rick_and_morty/feature/domain/entities/person_entity.dart';
import 'package:rick_and_morty/feature/presentation/bloc/persons_list_bloc/persons_list_bloc.dart';
import 'package:rick_and_morty/feature/presentation/bloc/persons_list_bloc/persons_list_event.dart';
import 'package:rick_and_morty/feature/presentation/bloc/persons_list_bloc/persons_list_state.dart';
import 'package:rick_and_morty/feature/presentation/widgets/person_detail_widget.dart';
import 'package:rick_and_morty/utility/extensions.dart';

class PersonsListWidget extends StatelessWidget {
  final EpisodeEntity episode;
  const PersonsListWidget({super.key, required this.episode});

  @override
  Widget build(BuildContext context) {
    final List<String> personsList = episode.characters.toStringEpisodes();
    BlocProvider.of<PersonsListBloc>(context, listen: false)
        .add(PersonsList(personQuery: personsList));
    return BlocBuilder<PersonsListBloc, PersonsListState>(
      builder: (context, state) {
        List<ResultsPerson> persons = [];

        if (state is PersonsListLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is PersonsListLoaded) {
          persons = state.persons;
          if (persons.isEmpty) {
            return const _ShowErrorTextWidget(
              message: 'There are no characters with that name found',
            );
          }
        } else if (state is PersonsListError) {
          return _ShowErrorTextWidget(message: state.message);
        }
        return ListView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.all(10.0),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              if (index < persons.length) {
                return _PersonsListBodyWidget(
                  person: persons[index],
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            itemCount: persons.length);
      },
    );
  }
}

class _ShowErrorTextWidget extends StatelessWidget {
  final String message;
  const _ShowErrorTextWidget({required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Text(
          message,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class _PersonsListBodyWidget extends StatelessWidget {
  final ResultsPerson person;

  const _PersonsListBodyWidget({
    required this.person,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      title: Text(
                        person.name,
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            size: 11,
                            color: person.status == 'Alive'
                                ? Colors.lightGreenAccent[400]
                                : person.status == 'Dead'
                                    ? Colors.red
                                    : Colors.white,
                          ),
                          // const SizedBox(
                          //   width: 6,
                          // ),
                          Text(
                            person.status,
                          ),
                        ],
                      ),
                      leading: Hero(
                          tag: person.id,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(person.image),
                            backgroundColor: AppColors.cellBackground,
                          )),
                      trailing: Text(
                        person.species,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PersonDetailWidget(
                        person: person,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
