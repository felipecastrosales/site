import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:site/app/app_widget.dart';
import 'package:site/app/core/injections/injections.dart';
import 'package:site/app/features/home/home_page.dart';
import 'package:site/main.dart' as app;

import '../test/utils/utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  setupFirebaseAuthMocks();

  setUpAll(() async {
    if (Firebase.apps.isEmpty) {
      await Firebase.initializeApp();
    }
    configureDependencies();
  });

  group('App', () {
    testWidgets('Widget', (tester) async {
      await app.main();
      await tester.pump();
      expect(find.byType(AppWidget), findsOneWidget);
    });

    group('HomePage', () {
      testWidgets('Widget', (tester) async {
        await app.main();
        await tester.pump();
        expect(find.byType(HomePage), findsOneWidget);
      });

      // testWidgets('Find all list widgets inside HomePage', (tester) async {
      //   await app.main();
      //   await tester.pump();

      //   /// Find presentation section
      //   final presentationFinder = find.byKey(AppKeys.presentation);
      //   final presentationView = find.byType(Presentation);
      //   await tester.dragUntilVisible(
      //     presentationFinder,
      //     presentationView,
      //     const Offset(0, -200),
      //   );
      //   await tester.pump();
      //   expect(presentationFinder, findsOneWidget);

      //   /// Find projects section
      //   final projectsFinder = find.byKey(AppKeys.projects);
      //   final projectsView = find.byType(Projects);
      //   await tester.dragUntilVisible(
      //     projectsFinder,
      //     projectsView,
      //     const Offset(0, -500),
      //   );
      //   await tester.pump();
      //   expect(projectsFinder, findsOneWidget);

      //   /// Find experience section
      //   final experienceFinder = find.byKey(AppKeys.experience);
      //   final experienceView = find.byType(Experience);
      //   await tester.dragUntilVisible(
      //     experienceFinder,
      //     experienceView,
      //     const Offset(0, -150),
      //   );
      //   await tester.pump();
      //   expect(experienceFinder, findsOneWidget);

      //   /// Find social section
      //   final socialFinder = find.byKey(AppKeys.social);
      //   final socialView = find.byKey(AppKeys.social);
      //   await tester.dragUntilVisible(
      //     socialFinder,
      //     socialView,
      //     const Offset(0, -200),
      //   );
      //   await tester.pump();
      //   expect(socialFinder, findsOneWidget);

      //   /// Find contact section
      //   final contactFinder = find.byKey(AppKeys.contact);
      //   final contactView = find.byKey(AppKeys.contact);
      //   await tester.dragUntilVisible(
      //     contactFinder,
      //     contactView,
      //     const Offset(0, -200),
      //   );
      //   await tester.pump();
      //   expect(contactFinder, findsOneWidget);

      //   /// Find custom footer section
      //   final customFooterFinder = find.byKey(AppKeys.customFooter);
      //   final customFooterView = find.byKey(AppKeys.customFooter);
      //   await tester.dragUntilVisible(
      //     customFooterFinder,
      //     customFooterView,
      //     const Offset(0, -200),
      //   );
      //   await tester.pump();
      //   expect(customFooterFinder, findsOneWidget);
      // });
    });
  });
}
