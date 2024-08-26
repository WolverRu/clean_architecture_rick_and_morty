import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/core/usecases/usecase.dart';
import 'package:rick_and_morty/feature/domain/entities/person_entity.dart';
import 'package:rick_and_morty/feature/domain/repositores/person_repository.dart';

class GetMultiplePersons
    extends Usecase<List<ResultsPerson>, GetMultiplePersonsParams> {
  final PersonRepository personRepository;

  GetMultiplePersons({required this.personRepository});

  @override
  Future<Either<Failure, List<ResultsPerson>>> call(
      GetMultiplePersonsParams param) async {
    return await personRepository.getMultiplePersons(param.persons);
  }
}

class GetMultiplePersonsParams {
  final List<String> persons;

  GetMultiplePersonsParams({required this.persons});
}
