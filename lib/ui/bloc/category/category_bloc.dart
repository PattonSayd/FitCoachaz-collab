import 'package:bloc/bloc.dart';
import 'package:fitcoachaz/data/models/coach.dart';
import 'package:fitcoachaz/domain/repositories/category_reposytory.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc({
    required final CategoryRepository repository,
  })  : _repository = repository,
        super(const _Initial()) {
    on<CategoryEvent>((event, emit) =>
        event.map(fetch: (event) => _onFecthData(event, emit)));
  }

  final CategoryRepository _repository;

  _onFecthData(
    _FetchCategory event,
    Emitter<CategoryState> emit,
  ) async {
    final List<Coach> coaches =
        await _repository.getDataByCategory(event.sport);
    emit(CategoryState.completed(coaches));
  }
}
