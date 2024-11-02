import 'package:go_router/go_router.dart';
import 'package:wiget_app/presentation/screens/details-profile/details-profile.dart';
import '../presentation/screens/screens.dart';


final appRouter = GoRouter(
  initialLocation: "/",
  routes: [
  GoRoute(path: "/",builder: (context, state) {
    return const HomeScreen();
  },
  ),

  GoRoute(path: "/counter",builder: (context, state) {
    return const CounterScreen();
  },
  ),

  GoRoute(path: "/layout",builder: (context, state) {
    return const LayoutScreen();
  },
  ),

  GoRoute(path: "/cards",builder: (context, state) {
    return const CardsScreen();
  },
  ),
  GoRoute(path: "/buttons",builder: (context, state) {
    return const ButtonsScreen();
  },
  ),

  GoRoute(path: "/text-field",builder: (context, state) {
    return const TextFieldScreen();
  }),

  GoRoute(path: "/info/:value/:age/:ocupation",builder: (context, state) {
    final value = state.pathParameters["value"] ?? "";
    final age = int.parse(state.pathParameters["age"] ?? '0'); 
    final ocupation = state.pathParameters["ocupation"] ?? "";
    return InfoScreen(value: value, age: age, ocupation: ocupation);
  }),

  GoRoute(path: "/create-user-profile",builder: (context, state) {
    return const CreateUserProfileScreen();
  }),

  GoRoute(path: "/details-profile/:name/:age/:occupation",builder: (context, state) {
    final name = state.pathParameters["name"] ?? "";
    final age = int.parse(state.pathParameters["age"] ?? '0'); 
    final occupation = state.pathParameters["occupation"] ?? "";
    return DetailsProfileScreen(name: name, age: age, occupation: occupation);
  }),

]);