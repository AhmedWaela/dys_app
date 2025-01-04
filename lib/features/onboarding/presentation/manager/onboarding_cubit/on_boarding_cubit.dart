// ignore_for_file: use_build_context_synchronously

import 'package:dys_app/core/exports/exports.dart';
part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());
  PageController pageController = PageController();

  void changeIndex(int index) {
    emit(IndexChanged(index: index));
  }

  Future<void> nextPage(BuildContext context) async {
    if (state.index != 2) {
      await pageController.nextPage(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
      );
    } else {
      await saveStatusAndNavigate(context);
    }
  }

  Future<void> jumpToLastPage(BuildContext context) async {
    if (state.index != 2) {
      pageController.jumpToPage(2);
    } else {
      await saveStatusAndNavigate(context);
    }
  }

  Future<void> saveStatusAndNavigate(BuildContext context) async {
    await SingletonInstance.sharedPreferences
        .setBool("IsPassOnBoardingView", true);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return Scaffold();
        },
      ),
    );
  }
}
