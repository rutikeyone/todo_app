import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/app/navigation/app_router.dart';
import 'package:todo_app/data/auth_data_source.dart';
import 'package:todo_app/data/impl/auth_data_source_impl.dart';
import 'package:todo_app/data/impl/todos_data_source_impl.dart';
import 'package:todo_app/data/todos_data_source.dart';
import 'package:todo_app/domain/auth_repository.dart';
import 'package:todo_app/domain/impl/auth_repository_impl.dart';
import 'package:todo_app/domain/impl/todos_repository_impl.dart';
import 'package:todo_app/domain/todos_repository.dart';
import 'package:todo_app/presentation/auth/controller/login_cubit.dart';
import 'package:todo_app/presentation/auth/controller/register_cubit.dart';
import 'package:todo_app/presentation/todos/controller/add_todo_cubit.dart';
import 'package:todo_app/presentation/todos/controller/todos_list_cubit.dart';
import 'package:todo_app/presentation/todos/controller/update_todo_cubit.dart';
import 'package:uuid/uuid.dart';

class AppContainer {
  AuthRepository? _authRepository;

  static AppContainer of(BuildContext context) {
    return context.read<AppContainer>();
  }

  GoRouter createRouter() {
    return router(createAuthRepository());
  }

  FirebaseAuth createFirebaseAuth() {
    return FirebaseAuth.instance;
  }

  AuthDataSource createAuthDataSource() {
    return AuthDataSourceImpl(firebaseAuth: createFirebaseAuth());
  }

  AuthRepository createAuthRepository() {
    return _authRepository ??= AuthRepositoryImpl(
      authDataSource: createAuthDataSource(),
    );
  }

  Uuid createUuid() {
    return Uuid();
  }

  FirebaseFirestore createFirebaseFirestore() {
    return FirebaseFirestore.instance;
  }

  TodosDataSource createTodosDataSource() {
    return TodosDataSourceImpl(
      firebaseFirestore: createFirebaseFirestore(),
      uuid: createUuid(),
    );
  }

  TodosRepository createTodosRepository() {
    return TodosRepositoryImpl(
      authDataSource: createAuthDataSource(),
      todosDataSource: createTodosDataSource(),
    );
  }

  LoginCubit createLoginCubit() {
    return LoginCubit(authRepository: createAuthRepository());
  }

  RegisterCubit createRegisterCubit() {
    return RegisterCubit(authRepository: createAuthRepository());
  }

  TodosListCubit createTodosListCubit() {
    return TodosListCubit(
      todosRepository: createTodosRepository(),
      authRepository: createAuthRepository(),
    );
  }

  AddTodoCubit createAddTodoCubit() {
    return AddTodoCubit(todosRepository: createTodosRepository());
  }

  UpdateTodoCubit createUpdateTodoCubit(String todoId) {
    return UpdateTodoCubit(
      todoId: todoId,
      todosRepository: createTodosRepository(),
    )..loadData();
  }
}
