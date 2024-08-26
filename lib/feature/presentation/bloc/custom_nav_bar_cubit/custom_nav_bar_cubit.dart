import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_nav_bar_cubit.freezed.dart';
part 'custom_nav_bar_state.dart';

class CustomNavBarCubit extends Cubit<CustomNavBarState> {
  CustomNavBarCubit()
      : super(const CustomNavBarState.selectedIndex(selectedIndex: 0));

  void updateSelectedIndex(int index) {
    emit(CustomNavBarState.selectedIndex(selectedIndex: index));
  }
}
