import 'package:flutter_bloc/flutter_bloc.dart';
import '../model/users.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  List<User> user = [];

  void loginUser(
      {required String username,
      required String email,
      required Future<bool> isLogin}) {
    emit(LoginInitial());
    user.add(User(name: username, email: email, isLogin: isLogin));
    User usr = User(name: '', email: '', isLogin: isLogin);
    print(usr.isLogin);
    emit(LoginLoading());
    Future.delayed(
        const Duration(seconds: 2), () => emit(LoginLoaded(user: user)));
  }
}
