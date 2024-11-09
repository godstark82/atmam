import 'package:conference_admin/core/datastate/data_state.dart';
import 'package:conference_admin/core/usecase/usecase.dart';
import 'package:conference_admin/features/home/data/models/home_models_others.dart';
import 'package:conference_admin/features/home/domain/repositories/home_repo.dart';

class UpdateStreamUseCase extends UseCase<DataState<void>, HomeCongressStreamModel> {
  final HomeRepo homeRepo;

  UpdateStreamUseCase(this.homeRepo);

  @override
  Future<DataState<void>> call(HomeCongressStreamModel params) async {
    return await homeRepo.updateCongressStream(params);
  }
}