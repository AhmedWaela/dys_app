import 'package:dys_app/core/exports/exports.dart';
part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());
  PageController pageController = PageController();
  void changeIndex(int index) {
    emit(IndexChanged(currentIndex: index));
  }

  Future<void> nextPage() async {
    await pageController.nextPage(
        duration: const Duration(milliseconds: 200), curve: Curves.easeInOut);
  }
}
