import 'package:bible_app/core/theme/home/color/home/home_color_ext.dart';
import 'package:bible_app/core/theme/home/typography/home_typography_ext.dart';
import 'package:bible_app/presentation/home/cubit/filter/filter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context)!;
    final typography = theme.extension<HomeTypographyExt>()!;
    final color = theme.extension<HomeColorExt>()!;
    return ValueListenableBuilder<TextEditingValue>(
      valueListenable: _controller,
      builder: (context, value, child) {
        return Padding(
          padding: const EdgeInsets.only(left: 16, right:8),
          child: Container(
            color: color.searchBarBackground,
            child: TextField(
              controller: _controller,
              onChanged: (query) {
                context.read<FilterCubit>().search(query);
              },
              
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search, color: color.searchBarIcon),
                suffixIcon: value.text.isEmpty
                    ? null
                    : IconButton(
                        icon: Icon(Icons.close, color: color.searchBarIcon),
                        onPressed: () {
                          _controller.clear();
                          context.read<FilterCubit>().clearSearch();
                        },
                      ),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),          
                
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
