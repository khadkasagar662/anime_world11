// import 'package:assignmentfinal/features/auth/screen/auth_screen.dart';
// import 'package:assignmentfinal/features/auth/services/auth_sevice.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';

// class MockAuthService extends Mock implements AuthService {}

// void main() {
//   late MockAuthService mockAuthService;

//   setUp(() {
//     mockAuthService = MockAuthService();
//   });

//   testWidgets('Sign Up User - Success', (WidgetTester tester) async {
//     const email = 'test@example.com';
//     const password = 'password';
//     const name = 'John Doe';

//     when(mockAuthService.signUpUser(
//       context: anyNamed('context'),
//       email: email,
//       password: password,
//       name: name,
//     )).thenAnswer((_) async {});

//     await tester.pumpWidget(
//       MaterialApp(
//         home: const AuthScreen(),
//         onGenerateRoute: Router.routeName,
//         navigatorObservers: [MockNavigatorObserver()],
//       ),
//     );

//     await tester.pumpAndSettle();

//     await tester.enterText(find.byKey(const Key('emailField')), email);
//     await tester.enterText(find.byKey(const Key('passwordField')), password);
//     await tester.enterText(find.byKey(const Key('nameField')), name);

//     await tester.tap(find.byType(ElevatedButton));

//     verify(mockAuthService.signUpUser(
//       context: anyNamed('context'),
//       email: email,
//       password: password,
//       name: name,
//     )).called(1);
//   });

//   testWidgets('Sign In User - Success', (WidgetTester tester) async {
//     const email = 'test@example.com';
//     const password = 'password';

//     when(mockAuthService.signInUser(
//       any,
//       context: anyNamed('context'),
//       email: email,
//       password: password,
//     )).thenAnswer((_) async {});

//     await tester.pumpWidget(
//       MaterialApp(
//         home: const AuthScreen(),
//         onGenerateRoute: Router.generateRoute,
//         navigatorObservers: [MockNavigatorObserver()],
//       ),
//     );

//     await tester.pumpAndSettle();

//     await tester.enterText(find.byKey(const Key('emailField')), email);
//     await tester.enterText(find.byKey(const Key('passwordField')), password);

//     await tester.tap(find.byType(ElevatedButton));

//     verify(mockAuthService.signInUser(
//       any,
//       context: anyNamed('context'),
//       email: email,
//       password: password,
//     )).called(1);
//   });
// }

// class MockNavigatorObserver extends Mock implements NavigatorObserver {}
