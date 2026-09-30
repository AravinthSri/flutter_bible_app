import 'package:bible_app/presentation/home/bloc/translation_bloc.dart';
import 'package:bible_app/presentation/home/bloc/translation_state.dart';
import 'package:bible_app/presentation/home/widgets/list/item_card.dart';
import 'package:bible_app/presentation/home/widgets/loading/loading_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TranslationList extends StatelessWidget {
  const TranslationList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TranslationBloc, TranslationState>(
      builder: (context, state) {
        if (state is TranslationLoading) {
          return const TranslationLoadingView();
        } else if (state is TranslationLoaded) {
          final translations = state.translations;
          return ListView.builder(
            itemCount: translations.length,
            itemBuilder: (context, index) {
              final translation = translations[index];
              return TranslationItemCard(translation: translation, index: index);
            },
          );
        } else if (state is TranslationError) {
          return Center(child: Text(state.message));
        }
        return const SizedBox.shrink();
      },
    );
  }
}
