# Graph Report - bible_app  (2026-10-03)

## Corpus Check
- 157 files · ~27,888 words
- Verdict: corpus is large enough that graph structure adds value.

## Summary
- 698 nodes · 707 edges · 105 communities (73 shown, 32 thin omitted)
- Extraction: 99% EXTRACTED · 1% INFERRED · 0% AMBIGUOUS · INFERRED: 7 edges (avg confidence: 0.8)
- Token cost: 0 input · 0 output

## Graph Freshness
- Built from commit: `bce663ab`
- Run `git rev-parse HEAD` and compare to check if the graph is stale.
- Run `graphify update .` after code changes (no API cost).

## Community Hubs (Navigation)
- [[_COMMUNITY_Community 0|Community 0]]
- [[_COMMUNITY_Community 1|Community 1]]
- [[_COMMUNITY_Community 2|Community 2]]
- [[_COMMUNITY_Community 3|Community 3]]
- [[_COMMUNITY_Community 4|Community 4]]
- [[_COMMUNITY_Community 5|Community 5]]
- [[_COMMUNITY_Community 6|Community 6]]
- [[_COMMUNITY_Community 7|Community 7]]
- [[_COMMUNITY_Community 8|Community 8]]
- [[_COMMUNITY_Community 9|Community 9]]
- [[_COMMUNITY_Community 10|Community 10]]
- [[_COMMUNITY_Community 11|Community 11]]
- [[_COMMUNITY_Community 12|Community 12]]
- [[_COMMUNITY_Community 13|Community 13]]
- [[_COMMUNITY_Community 14|Community 14]]
- [[_COMMUNITY_Community 15|Community 15]]
- [[_COMMUNITY_Community 16|Community 16]]
- [[_COMMUNITY_Community 17|Community 17]]
- [[_COMMUNITY_Community 18|Community 18]]
- [[_COMMUNITY_Community 19|Community 19]]
- [[_COMMUNITY_Community 20|Community 20]]
- [[_COMMUNITY_Community 21|Community 21]]
- [[_COMMUNITY_Community 22|Community 22]]
- [[_COMMUNITY_Community 23|Community 23]]
- [[_COMMUNITY_Community 24|Community 24]]
- [[_COMMUNITY_Community 25|Community 25]]
- [[_COMMUNITY_Community 26|Community 26]]
- [[_COMMUNITY_Community 27|Community 27]]
- [[_COMMUNITY_Community 28|Community 28]]
- [[_COMMUNITY_Community 29|Community 29]]
- [[_COMMUNITY_Community 30|Community 30]]
- [[_COMMUNITY_Community 31|Community 31]]
- [[_COMMUNITY_Community 32|Community 32]]
- [[_COMMUNITY_Community 33|Community 33]]
- [[_COMMUNITY_Community 34|Community 34]]
- [[_COMMUNITY_Community 35|Community 35]]
- [[_COMMUNITY_Community 36|Community 36]]
- [[_COMMUNITY_Community 37|Community 37]]
- [[_COMMUNITY_Community 38|Community 38]]
- [[_COMMUNITY_Community 39|Community 39]]
- [[_COMMUNITY_Community 40|Community 40]]
- [[_COMMUNITY_Community 41|Community 41]]
- [[_COMMUNITY_Community 42|Community 42]]
- [[_COMMUNITY_Community 43|Community 43]]
- [[_COMMUNITY_Community 44|Community 44]]
- [[_COMMUNITY_Community 45|Community 45]]
- [[_COMMUNITY_Community 46|Community 46]]
- [[_COMMUNITY_Community 47|Community 47]]
- [[_COMMUNITY_Community 48|Community 48]]
- [[_COMMUNITY_Community 49|Community 49]]
- [[_COMMUNITY_Community 50|Community 50]]
- [[_COMMUNITY_Community 51|Community 51]]
- [[_COMMUNITY_Community 52|Community 52]]
- [[_COMMUNITY_Community 53|Community 53]]
- [[_COMMUNITY_Community 54|Community 54]]
- [[_COMMUNITY_Community 55|Community 55]]
- [[_COMMUNITY_Community 56|Community 56]]
- [[_COMMUNITY_Community 57|Community 57]]
- [[_COMMUNITY_Community 58|Community 58]]
- [[_COMMUNITY_Community 59|Community 59]]
- [[_COMMUNITY_Community 60|Community 60]]
- [[_COMMUNITY_Community 61|Community 61]]
- [[_COMMUNITY_Community 62|Community 62]]
- [[_COMMUNITY_Community 63|Community 63]]
- [[_COMMUNITY_Community 64|Community 64]]
- [[_COMMUNITY_Community 65|Community 65]]
- [[_COMMUNITY_Community 66|Community 66]]
- [[_COMMUNITY_Community 67|Community 67]]
- [[_COMMUNITY_Community 68|Community 68]]
- [[_COMMUNITY_Community 69|Community 69]]
- [[_COMMUNITY_Community 70|Community 70]]
- [[_COMMUNITY_Community 71|Community 71]]
- [[_COMMUNITY_Community 72|Community 72]]
- [[_COMMUNITY_Community 100|Community 100]]
- [[_COMMUNITY_Community 101|Community 101]]
- [[_COMMUNITY_Community 102|Community 102]]

## God Nodes (most connected - your core abstractions)
1. `package:flutter/material.dart` - 36 edges
2. `package:flutter_bloc/flutter_bloc.dart` - 11 edges
3. `_` - 11 edges
4. `package:bible_app/domain/entities/translations_entities.dart` - 9 edges
5. `AppDelegate` - 8 edges
6. `🛠️ Technologies & Packages` - 8 edges
7. `package:bible_app/presentation/home/cubit/filter/filter_cubit.dart` - 7 edges
8. `📖 Flutter Bible App` - 7 edges
9. `package:dio/dio.dart` - 6 edges
10. `package:bible_app/core/theme/home/color/home/home_color_ext.dart` - 6 edges

## Surprising Connections (you probably didn't know these)
- `main()` --calls--> `my_application_new()`  [INFERRED]
  linux/runner/main.cc → linux/runner/my_application.cc
- `my_application_activate()` --calls--> `fl_register_plugins()`  [INFERRED]
  linux/runner/my_application.cc → linux/flutter/generated_plugin_registrant.cc
- `OnCreate()` --calls--> `GetClientArea()`  [INFERRED]
  windows/runner/flutter_window.cpp → windows/runner/win32_window.cpp
- `OnCreate()` --calls--> `SetChildContent()`  [INFERRED]
  windows/runner/flutter_window.cpp → windows/runner/win32_window.cpp
- `wWinMain()` --calls--> `CreateAndAttachConsole()`  [INFERRED]
  windows/runner/main.cpp → windows/runner/utils.cpp

## Communities (105 total, 32 thin omitted)

### Community 0 - "Community 0"
Cohesion: 0.06
Nodes (29): package:bible_app/presentation/home/type/language_filter_enum.dart, package:bible_app/presentation/home/widgets/filter/launage_filter_bottom_raido_button.dart, package:equatable/equatable.dart, GetTranslations, TranslationEvent, TranslationError, TranslationInitial, TranslationLoaded (+21 more)

### Community 1 - "Community 1"
Cohesion: 0.06
Nodes (31): authors, Flutter Team, Flutter, FlutterMacOS, description, homepage, ios, dependencies (+23 more)

### Community 2 - "Community 2"
Cohesion: 0.22
Nodes (7): package:bible_app/core/theme/splash/color/splash_color_ext.dart, BibleBookIcon, build, Icon, build, CircularProgress, Padding

### Community 3 - "Community 3"
Cohesion: 0.07
Nodes (23): package:bible_app/core/network/api_endpoints.dart, package:bible_app/core/network/dio_exception_mapper.dart, package:bible_app/data/datasoruce/translation/translation_remote_datasource.dart, package:bible_app/data/mappers/translation_mapper.dart, package:bible_app/data/models/translations/translations_remote_model.dart, package:bible_app/domain/entities/translations_entities.dart, package:bible_app/domain/repositories/translation_repository.dart, package:bible_app/presentation/home/widgets/list/item_info_view.dart (+15 more)

### Community 4 - "Community 4"
Cohesion: 0.09
Nodes (23): package:bible_app/data/datasoruce/translation/translation_remote_datascource_impl.dart, package:bible_app/data/repositories/translation_repository_impl.dart, package:bible_app/domain/usecases/get_translation_usecase.dart, package:bible_app/presentation/home/bloc/translation/translation_bloc.dart, package:bible_app/presentation/home/bloc/translation/translation_event.dart, package:bible_app/presentation/home/bloc/translation/translation_state.dart, package:bible_app/presentation/home/cubit/filter/filter_cubit.dart, package:bible_app/presentation/home/widgets/filter/filter_chips.dart (+15 more)

### Community 5 - "Community 5"
Cohesion: 0.12
Nodes (18): FlutterWindow(), OnCreate(), Create(), Destroy(), EnableFullDpiSupportIfAvailable(), GetClientArea(), GetThisFromHandle(), GetWindowClass() (+10 more)

### Community 6 - "Community 6"
Cohesion: 0.15
Nodes (11): package:bible_app/core/theme/splash/typography/splash_typography_ext.dart, package:bible_app/l10n/app_localizations.dart, build, SplashTypography, SplashTypographyExt, BibleSubTitle, build, Text (+3 more)

### Community 7 - "Community 7"
Cohesion: 0.09
Nodes (22): package:bible_app/app/router/app_deeplink.dart, package:bible_app/app/router/app_route.dart, package:bible_app/presentation/home/home_screen.dart, package:bible_app/presentation/splash/cubit/splash_cubit.dart, package:bible_app/presentation/splash/cubit/splash_state.dart, package:bible_app/presentation/splash/splash_screen.dart, package:bible_app/presentation/splash/widgets/bible_book_icon.dart, package:bible_app/presentation/splash/widgets/bible_subtitle.dart (+14 more)

### Community 8 - "Community 8"
Cohesion: 0.07
Nodes (26): package:bible_app/core/theme/home/color/avatar/avatar_colors_ext.dart, package:bible_app/core/theme/home/color/home/home_filter_color_ext.dart, package:bible_app/core/theme/home/typography/home_typography.dart, package:bible_app/core/theme/splash/typography/splash_typography.dart, package:bible_app/presentation/home/widgets/filter/language_filter_bottom_sheet.dart, AppTheme, _buildDarkTheme, _buildLightTheme (+18 more)

### Community 9 - "Community 9"
Cohesion: 0.09
Nodes (18): package:bible_app/core/network/dio_client.dart, package:bible_app/core/network/dio_interceptor.dart, package:bible_app/core/network/network_exception.dart, package:bible_app/di/translation/translation_di.dart, package:dio/dio.dart, package:flutter/foundation.dart, package:get_it/get_it.dart, setupDependencies (+10 more)

### Community 10 - "Community 10"
Cohesion: 0.1
Nodes (20): authors, Your Company, dependencies, FlutterMacOS, description, homepage, license, file (+12 more)

### Community 11 - "Community 11"
Cohesion: 0.06
Nodes (28): app_localizations.dart, app_localizations_en.dart, app_localizations_ta.dart, dart:async, package:flutter_localizations/flutter_localizations.dart, package:flutter/widgets.dart, package:intl/intl.dart, AppLocalizations (+20 more)

### Community 12 - "Community 12"
Cohesion: 0.12
Nodes (15): code:text (UI), 🤝 Contributions, Dio — Networking, Equatable — Value Equality, 📖 Flutter Bible App, Flutter BLoC — State Management, Flutter Localization — Localization, GetIt — Dependency Injection (+7 more)

### Community 13 - "Community 13"
Cohesion: 0.13
Nodes (14): authors, Flutter Dev Team, homepage, license, type, name, platforms, ios (+6 more)

### Community 14 - "Community 14"
Cohesion: 0.13
Nodes (14): authors, Flutter Dev Team, homepage, license, type, name, platforms, osx (+6 more)

### Community 15 - "Community 15"
Cohesion: 0.14
Nodes (4): fl_register_plugins(), main(), my_application_activate(), my_application_new()

### Community 16 - "Community 16"
Cohesion: 0.22
Nodes (5): package:flutter/material.dart, AppColor, AvatarColors, SplashColor, SplashTypographyExt

### Community 17 - "Community 17"
Cohesion: 0.33
Nodes (5): build_end, build_start, code_assets, data_assets, dependencies

### Community 18 - "Community 18"
Cohesion: 0.18
Nodes (10): background_color, description, display, icons, name, orientation, prefer_related_applications, short_name (+2 more)

### Community 19 - "Community 19"
Cohesion: 0.22
Nodes (10): _, class, EqualUnmodifiableListView, identical, orElse, StateError, _then, toString (+2 more)

### Community 20 - "Community 20"
Cohesion: 0.2
Nodes (7): package:bible_app/core/theme/app_color.dart, package:bible_app/core/theme/splash/color/splash_color.dart, HomeColor, copyWith, HomeFilterColorExt, lerp, SplashColorExt

### Community 21 - "Community 21"
Cohesion: 0.22
Nodes (3): FlutterAppDelegate, FlutterImplicitEngineDelegate, AppDelegate

### Community 22 - "Community 22"
Cohesion: 0.4
Nodes (4): package:bible_app/core/theme/fonts/app_font_family.dart, build, HomeTypography, HomeTypographyExt

### Community 23 - "Community 23"
Cohesion: 0.25
Nodes (7): configVersion, flutterRoot, flutterVersion, generator, generatorVersion, packages, pubCache

### Community 24 - "Community 24"
Cohesion: 0.48
Nodes (5): code_sign_if_enabled(), install_bcsymbolmap(), install_dsym(), install_framework(), strip_invalid_archs()

### Community 25 - "Community 25"
Cohesion: 0.1
Nodes (17): package:bible_app/app/router/app_router.dart, package:bible_app/core/di/injection.dart, package:bible_app/core/theme/app_theme.dart, package:bible_app/main.dart, package:bible_app/presentation/home/cubit/filter/filter_state.dart, package:bible_app/presentation/home/widgets/list/item_card.dart, package:flutter_test/flutter_test.dart, build (+9 more)

### Community 26 - "Community 26"
Cohesion: 0.4
Nodes (4): package:bible_app/core/theme/home/color/home/home_color.dart, copyWith, HomeColorExt, lerp

### Community 27 - "Community 27"
Cohesion: 0.33
Nodes (5): build_end, build_start, code_assets, data_assets, dependencies

### Community 28 - "Community 28"
Cohesion: 0.4
Nodes (4): images, info, author, version

### Community 29 - "Community 29"
Cohesion: 0.33
Nodes (5): build_end, build_start, code_assets, data_assets, dependencies

### Community 30 - "Community 30"
Cohesion: 0.33
Nodes (5): build_end, build_start, code_assets, data_assets, dependencies

### Community 31 - "Community 31"
Cohesion: 0.33
Nodes (5): build_end, build_start, code_assets, data_assets, dependencies

### Community 32 - "Community 32"
Cohesion: 0.33
Nodes (5): build_end, build_start, code_assets, data_assets, dependencies

### Community 33 - "Community 33"
Cohesion: 0.47
Nodes (4): wWinMain(), CreateAndAttachConsole(), GetCommandLineArguments(), Utf8FromUtf16()

### Community 34 - "Community 34"
Cohesion: 0.33
Nodes (3): RegisterGeneratedPlugins(), NSWindow, MainFlutterWindow

### Community 35 - "Community 35"
Cohesion: 0.4
Nodes (4): images, info, author, version

### Community 36 - "Community 36"
Cohesion: 0.4
Nodes (4): package:characters/characters.dart, _computeShortName, getShortName, NameUtils

### Community 38 - "Community 38"
Cohesion: 0.4
Nodes (4): package:bible_app/core/theme/home/color/avatar/avatar_colors.dart, AvatarColorExtension, copyWith, lerp

### Community 39 - "Community 39"
Cohesion: 0.07
Nodes (25): package:bible_app/core/theme/home/color/home/home_color_ext.dart, package:bible_app/core/theme/home/typography/home_typography_ext.dart, package:bible_app/core/utils/avatar_colors_utils.dart, package:bible_app/core/utils/name_utils.dart, package:bible_app/presentation/home/widgets/loading/loading_bible_icon.dart, build, Expanded, TranslationItemInfoView (+17 more)

### Community 40 - "Community 40"
Cohesion: 0.5
Nodes (3): package:bible_app/core/theme/fonts/app_fonts.dart, AppFontFamily, resolve

### Community 41 - "Community 41"
Cohesion: 0.5
Nodes (3): configVersion, packages, roots

### Community 43 - "Community 43"
Cohesion: 0.5
Nodes (3): package:freezed_annotation/freezed_annotation.dart, TranslationItemRemoteModel, TranslationsRemoteModel

### Community 44 - "Community 44"
Cohesion: 0.5
Nodes (3): SplashCompleted, SplashInitial, SplashState

### Community 45 - "Community 45"
Cohesion: 0.5
Nodes (3): copyWith, HomeTypographyExt, lerp

## Knowledge Gaps
- **403 isolated node(s):** `version`, `author`, `PodsDummy_flutter_localization`, `PodsDummy_shared_preferences_foundation`, `name` (+398 more)
  These have ≤1 connection - possible missing edges or undocumented components.
- **32 thin communities (<3 nodes) omitted from report** — run `graphify query` to explore isolated nodes.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **Why does `package:flutter/material.dart` connect `Community 16` to `Community 0`, `Community 2`, `Community 3`, `Community 4`, `Community 38`, `Community 6`, `Community 8`, `Community 40`, `Community 39`, `Community 7`, `Community 45`, `Community 20`, `Community 22`, `Community 25`, `Community 26`?**
  _High betweenness centrality (0.125) - this node is a cross-community bridge._
- **Why does `package:bible_app/domain/entities/translations_entities.dart` connect `Community 3` to `Community 0`, `Community 25`, `Community 11`?**
  _High betweenness centrality (0.044) - this node is a cross-community bridge._
- **Why does `package:flutter_bloc/flutter_bloc.dart` connect `Community 7` to `Community 4`, `Community 39`, `Community 8`, `Community 11`, `Community 25`?**
  _High betweenness centrality (0.038) - this node is a cross-community bridge._
- **What connects `version`, `author`, `PodsDummy_flutter_localization` to the rest of the system?**
  _404 weakly-connected nodes found - possible documentation gaps or missing edges._
- **Should `Community 0` be split into smaller, more focused modules?**
  _Cohesion score 0.06 - nodes in this community are weakly interconnected._
- **Should `Community 1` be split into smaller, more focused modules?**
  _Cohesion score 0.06 - nodes in this community are weakly interconnected._
- **Should `Community 3` be split into smaller, more focused modules?**
  _Cohesion score 0.07 - nodes in this community are weakly interconnected._