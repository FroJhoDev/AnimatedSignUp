import 'package:animated_sign_up/app/my_app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('basic test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Get Started'), findsOneWidget);
  });
}
