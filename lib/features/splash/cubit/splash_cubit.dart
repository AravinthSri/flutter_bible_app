import 'package:bible_app/features/splash/cubit/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());

  Future<void> startSplash() async {
    await Future.delayed(const Duration(milliseconds: 3000));

    if (!isClosed) {
      emit(const SplashCompleted());
    }
  }
}
