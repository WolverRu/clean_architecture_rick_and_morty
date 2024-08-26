import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/core/usecases/usecase.dart';
import 'package:rick_and_morty/feature/domain/entities/person_entity.dart';
import 'package:rick_and_morty/feature/domain/repositores/person_repository.dart';

class GetAllPersons extends Usecase<PersonEntity, PagePersonParams> {
  final PersonRepository personRepository;

  GetAllPersons({required this.personRepository});

  @override
  Future<Either<Failure, PersonEntity>> call(PagePersonParams param) async {
    return await personRepository.getAllPersons(param.page, param.name);
  }
}

class PagePersonParams {
  final int page;
  final String name;

  PagePersonParams({
    required this.page,
    required this.name,
  });
}
