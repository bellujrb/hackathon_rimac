import 'package:flutter_modular/flutter_modular.dart';
import 'package:frontend/module/home/presentation/screens/bienestar_screen.dart';
import 'package:frontend/module/home/presentation/screens/device_screen.dart';
import 'package:frontend/module/home/presentation/screens/device_status_screen.dart';
import 'package:frontend/module/home/presentation/screens/financeiro_screen.dart';
import 'package:frontend/module/home/presentation/screens/home_screen.dart';
import 'package:frontend/module/home/presentation/screens/mental_screen.dart';
import 'package:frontend/module/home/presentation/screens/salud_screen.dart';
class AppModule extends Module {

  @override
  List<Bind> get binds => [

  ];

  @override
  List<ChildRoute> get routes => [
    ChildRoute('/', child: (context, args) => const HomeScreen()),

    ChildRoute('/device', child: (context, args) => const DeviceScreen()),
    ChildRoute('/devicestatus', child: (context, args) => const DeviceStatusScreen()),

    ChildRoute('/bienestar', child: (context, args) => const BienestarScreen()),
    ChildRoute('/salud', child: (context, args) => const SaludScreen()),
    ChildRoute('/finance', child: (context, args) => const FinanceiroScreen()),
    ChildRoute('/mental', child: (context, args) => const MentalScreen()),
  ];
}