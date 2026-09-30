import 'package:bible_app/domain/entities/translations_entities.dart';
import 'package:bible_app/presentation/home/widgets/list/item_info_view.dart';
import 'package:bible_app/presentation/home/widgets/list/item_shortname.dart';
import 'package:flutter/material.dart';

class TranslationItemCard extends StatelessWidget {
  const TranslationItemCard({super.key, required this.translation, required this.index});

  final TranslationItemEntities translation;
  final int index;

  

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      elevation: 4.0,
      child: Row(
        children: [
          ShortName(name: translation.name, index: index),
          TranslationItemInfoView(
            name: translation.name,
            language: translation.language,
          ),
          IconButton(
            icon: const Icon(Icons.chevron_right, size: 24.0),
            onPressed: () {
              // Handle download action
            },
          ),
        ],
      ),
    );
  }
}
