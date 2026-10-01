import 'package:bible_app/presentation/home/bloc/translation/translation_bloc.dart';
import 'package:bible_app/presentation/home/bloc/translation/translation_state.dart';
import 'package:bible_app/presentation/home/cubit/filter/filter_cubit.dart';
import 'package:bible_app/presentation/home/widgets/filter/filter_chips.dart';
import 'package:bible_app/presentation/home/widgets/filter/filter_icon.dart';
import 'package:bible_app/presentation/home/widgets/list/translation_list_view.dart';
import 'package:bible_app/presentation/home/widgets/loading/loading_view.dart';
import 'package:bible_app/presentation/home/widgets/search/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TranslationList extends StatelessWidget {
  const TranslationList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<TranslationBloc, TranslationState>(
      listener: (context, state) {
        if (state is TranslationLoaded) {
          context.read<FilterCubit>().setTranslations(state.translations);
        }
      },
      child: BlocBuilder<TranslationBloc, TranslationState>(
        builder: (context, state) {
          if (state is TranslationLoading) {
            return const TranslationLoadingView();
          } else if (state is TranslationLoaded) {
            return const Column(
              children: [
                Row(
                  children: [
                    Expanded(child: SearchView()),
                    FilterIcon(),
                  ],
                ),
                LanguageFilterChips(),
                Expanded(child: TranslationListView()),
              ],
            );
          } else if (state is TranslationError) {
            return Center(child: Text(state.message));
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
