import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterState extends Equatable {
  final int counter;

  const CounterState({required this.counter});

  const CounterState.initial() : counter = 0;

  CounterState copyWith(
    int? newCount,
  ) {
    return CounterState(counter: newCount ?? counter);
  }

  @override
  List<Object?> get props => [
    counter
  ];
}

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterState.initial());

  void increment() => emit(state.copyWith(state.counter + 1));

  void decrement() => emit(state.copyWith(state.counter - 1));
}
