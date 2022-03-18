import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mobilus_test/repository/user_repository.dart';
import 'package:mocktail/mocktail.dart';

class ClientMock extends Mock implements http.Client {}

void main() {
  final client = ClientMock();
  final repository = UserRepository(client);

  test('Usuario', () async {
    when(() => client
            .get(Uri.parse("https://62348c2fdebd056201e7d93f.mockapi.io/user")))
        .thenAnswer((_) async => http.Response(jsonReturn, 200));

    final list = await repository.getUser();
    expect(list.isNotEmpty, equals(true));
    expect(list.first.login, equals('leon@re4.com'));
    expect(list.first.password, equals('senha#1234'));
  });
  test('Erro de rede', () async {
    when(() => client
            .get(Uri.parse("https://62348c2fdebd056201e7d93f.mockapi.io/user")))
        .thenAnswer((_) async => http.Response(jsonReturn, 400));
    expect(() async => await repository.getUser(), throwsException);
  });
}

const jsonReturn = '[{"login":"leon@re4.com","password":"senha#1234"}]';
