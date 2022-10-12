import 'dart:developer';

import 'package:fwc_album_app/app/models/register_user_model.dart';
import 'package:fwc_album_app/app/pages/auth/register/view/register_view.dart';
import 'package:fwc_album_app/app/repositories/auth/auth_repository.dart';

import './register_presenter.dart';

class RegisterPresenterImpl implements RegisterPresenter {
  late RegisterView _view;
  final AuthRepository authRepository;

  RegisterPresenterImpl({required this.authRepository});

  @override
  Future<void> register(
      {required String name,
      required String email,
      required String password,
      confirmPassword}) async {
    final registerUserModel = RegisterUserModel(
        name: name,
        email: email,
        password: password,
        confirmPassword: confirmPassword);

    try {
      await authRepository.register(registerUserModel);
      _view.registerSucess();
    } catch (e, s) {
      log('Erro ao cadastrar usuário', error: e, stackTrace: s);
      _view.registerError();
    }
  }

  @override
  set view(RegisterView view) {
    // TODO: implement view
  }
}
