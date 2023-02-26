import 'package:flutter_test/flutter_test.dart';

import 'package:site/app/features/home/widgets/contact/contact_widget.dart';
import 'package:site/app/features/home/widgets/contact/controller/contact_controller.dart';

import '../../../../../flutter_test_config.dart';
import '../../../../../utils/utils.dart';

void main() {
  late ContactController contactController;

  setUp(() {
    contactController = MockContactController();
  });

  testWidgets('Should renders Contact', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: ContactWidget(
        contactController: contactController,
      ),
    );

    expect(
      find.byType(ContactWidget),
      findsOneWidget,
    );
  });
}
