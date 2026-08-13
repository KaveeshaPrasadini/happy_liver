import 'package:flutter_test/flutter_test.dart';
import 'package:happy_liver/assessment_results_main.dart';

void main() {
  testWidgets(
    'Assessment Results screen loads',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const AssessmentResultsApp(),
      );

      expect(
        find.text('Assessment Results'),
        findsOneWidget,
      );

      expect(
        find.text('Fatty Liver Risk'),
        findsOneWidget,
      );

      expect(
        find.text('Cholesterol Risk'),
        findsOneWidget,
      );
    },
  );
}
