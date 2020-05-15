import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_go_fast/app/app_controller.dart';
import 'package:flutter_go_fast/app/app_widget.dart';
import 'package:flutter_go_fast/app/core/interfaces/shared_repository_interface.dart';
import 'package:flutter_go_fast/app/core/repositories/shared_repository.dart';
import 'package:flutter_go_fast/app/modules/home_module.dart';
import 'package:flutter_go_fast/app/views/pages/splash_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
    Bind<ISharedRepositoryInterface>(
      (i) => SharedRepository(),
    ),
    Bind(
      (i) => AppController(),
    ),
  ];

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<Router> get routers => [
    Router(
      '/',
      child: (_, args) => SplashPage(),
      transition: TransitionType.fadeIn,
    ),
    Router(
      '/home',
      module: HomeModule(),
    ),
  ];

}