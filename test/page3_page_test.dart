import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobilus_test/models/user.dart';
import 'package:mobilus_test/pages/page3.dart';

void main() {
  testWidgets('Validação de widget', (tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Page3(),
    ));
    final textField = find.byType(TextField);
    expect(textField, findsNWidgets(2));

    expect(find.widgetWithText(TextField, "Usuário"), findsNWidgets(1));
    expect(find.widgetWithText(TextField, "Senha"), findsNWidgets(1));

    final elevatedButton = find.byType(ElevatedButton);
    expect(elevatedButton, findsNWidgets(2));

    expect(find.widgetWithText(ElevatedButton, "Login"), findsNWidgets(1));
    expect(find.widgetWithText(ElevatedButton, "Forgot password?"),
        findsNWidgets(1));

    final imageAsset = find.byType(Image);
    expect(imageAsset, findsNWidgets(1));
  });
}
