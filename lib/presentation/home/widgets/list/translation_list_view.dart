import 'package:bible_app/presentation/home/cubit/filter/filter_cubit.dart';
import 'package:bible_app/presentation/home/cubit/filter/filter_state.dart';
import 'package:bible_app/presentation/home/widgets/list/item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TranslationListView extends StatelessWidget {
  const TranslationListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterCubit, FilterState>(
      builder: (context, state) {
        final translations = state.filteredTranslations;

        if (translations.isEmpty) {
          return const Center(child: Text('No translations found'));
        }

        return ListView.builder(
          itemCount: translations.length,
          itemBuilder: (context, index) {
            final translation = translations[index];
            return TranslationItemCard(translation: translation, index: index);
          },
        );
      },
    );
  }
}
