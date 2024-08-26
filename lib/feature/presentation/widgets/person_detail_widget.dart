import 'package:flutter/material.dart';
import 'package:rick_and_morty/common/app_colors.dart';
import 'package:rick_and_morty/feature/domain/entities/person_entity.dart';
import 'package:rick_and_morty/feature/presentation/widgets/episodes_list_widget.dart';
import 'package:rick_and_morty/feature/presentation/widgets/person_cache_image_widget.dart';
import 'package:intl/intl.dart';

class PersonDetailWidget extends StatelessWidget {
  final ResultsPerson person;
  const PersonDetailWidget({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    DateTime utcDateTime = person.created.toLocal();
    String createdDate = DateFormat.yMMMMd().format(utcDateTime);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Character"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 24,
            ),
            Text(
              person.name,
              style: const TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            PersonCacheImageWidget(
              imageUrl: person.image,
              width: 260,
              height: 260,
              radius: 0,
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: person.status == 'Alive' ? Colors.green : Colors.red,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  person.status,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  maxLines: 1,
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            if (person.type.isNotEmpty)
              BuildTextWidget(
                text: 'Type:',
                value: person.type,
              ),
            BuildTextWidget(
              text: 'Gender:',
              value: person.gender,
            ),
            BuildTextWidget(
              text: 'Number of episodes:',
              value: person.episode.length.toString(),
            ),
            BuildTextWidget(
              text: 'Species:',
              value: person.species,
            ),
            BuildTextWidget(
              text: 'Last known location:',
              value: person.location.name,
            ),
            BuildTextWidget(
              text: 'Origin:',
              value: person.origin.name,
            ),
            BuildTextWidget(
              text: 'Was created:',
              value: createdDate,
            ),
            const Text(
              'Episodes',
              style: TextStyle(
                color: AppColors.greyColor,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            SizedBox(
              height: 150,
              child: EpisodesListWidget(
                person: person,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}

class BuildTextWidget extends StatelessWidget {
  final String text, value;
  const BuildTextWidget({super.key, required this.text, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: const TextStyle(
            color: AppColors.greyColor,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 12,
        )
      ],
    );
  }
}
