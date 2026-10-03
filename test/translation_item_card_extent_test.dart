import 'package:bible_app/core/theme/app_theme.dart';
import 'package:bible_app/domain/entities/translations_entities.dart';
import 'package:bible_app/presentation/home/widgets/list/item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('translation row fits the fixed list extent', (tester) async {
    const item = TranslationItemEntities(
      identifier: 'kjv',
      name: 'King James Version',
      language: 'English',
      languageCode: 'en',
      license: 'public',
      url: 'https://example.com',
    );

    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.lightTheme(const Locale('en')),
        home: Scaffold(
          body: ListView.builder(
            itemExtent: TranslationItemCard.extent,
            itemCount: 12,
            itemBuilder: (context, index) {
              return TranslationItemCard(
                key: ValueKey(index),
                translation: item,
                index: index,
              );
            },
          ),
        ),
      ),
    );

    expect(tester.takeException(), isNull);
    expect(find.byType(TranslationItemCard), findsWidgets);
  });
}
