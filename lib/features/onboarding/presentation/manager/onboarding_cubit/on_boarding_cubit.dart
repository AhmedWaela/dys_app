import 'package:dys_app/core/exports/exports.dart';
part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());

  void changeIndex(int index) {
    emit(IndexChanged(currentIndex: index));
  }

  void nextPage() async {
    await state.pageController.nextPage(
        duration: const Duration(milliseconds: 200), curve: Curves.easeInOut);
  }
}
