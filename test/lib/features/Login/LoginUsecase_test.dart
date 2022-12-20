import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:techypanther/features/Login/Data/DataSource/LoginChopperService.dart';
import 'package:techypanther/features/Login/Data/LoginRepository.dart';

class MockLoginChopperService extends Mock implements LoginChopperService {}

void main() {
  late LoginRepository loginRepository;
  late MockLoginChopperService loginChopperService;
  setUp(() {
    loginChopperService = MockLoginChopperService();
    loginRepository = LoginRepository(loginService: loginChopperService);
  });

  test("Login api test", (() {
    
  }));
}
