// Dependency injection setup file
// This file will be used to register all the dependencies using get_it package

// Example structure:
// final sl = GetIt.instance;
//
// Future<void> init() async {
//   // Features
//   // Authentication
//   // Bloc
//   sl.registerFactory(() => AuthBloc(loginUser: sl()));
//
//   // Use cases
//   sl.registerLazySingleton(() => LoginUser(sl()));
//
//   // Repository
//   sl.registerLazySingleton<AuthRepository>(
//     () => AuthRepositoryImpl(
//       remoteDataSource: sl(),
//       localDataSource: sl(),
//       networkInfo: sl(),
//     ),
//   );
//
//   // Data sources
//   sl.registerLazySingleton<AuthRemoteDataSource>(
//     () => AuthRemoteDataSourceImpl(client: sl()),
//   );
//
//   // Core
//   sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
//
//   // External
//   sl.registerLazySingleton(() => http.Client());
// }

void init() {
  // TODO: Implement dependency injection setup
}
