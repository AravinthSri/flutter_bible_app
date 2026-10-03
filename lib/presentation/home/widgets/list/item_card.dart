import 'package:bible_app/domain/entities/translations_entities.dart';
import 'package:bible_app/presentation/home/widgets/list/item_info_view.dart';
import 'package:bible_app/presentation/home/widgets/list/item_shortname.dart';
import 'package:flutter/material.dart';

class TranslationItemCard extends StatelessWidget {
  const TranslationItemCard({
    super.key,
    required this.translation,
    required this.index,
  });

  /// Vertical margin around the row. Included in [extent].
  static const double _verticalMargin = 8;

  /// Fixed row height so the list can use [ListView.itemExtent].
  static const double contentHeight = 72;

  /// Full main-axis size of one list child, including vertical margin.
  static const double extent = contentHeight + (_verticalMargin * 2);

  final TranslationItemEntities translation;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: _verticalMargin,
      ),
      child: SizedBox(
        height: contentHeight,
        child: Row(
          children: [
            ShortName(name: translation.name, index: index),
            TranslationItemInfoView(
              name: translation.name,
              language: translation.language,
            ),
            IconButton(
              icon: const Icon(Icons.chevron_right, size: 24),
              onPressed: () {
                // Handle download action
              },
            ),
          ],
        ),
      ),
    );
  }
}
