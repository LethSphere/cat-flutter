import 'package:go_router/go_router.dart';
import 'package:the_cat_api/domain/entities/catbreed.dart';
import 'package:the_cat_api/presentation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/splash',
  routes: [
    GoRoute(
      path: '/splash',
      name: SplashScreen.name,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/',
      name: LandingScreen.name,
      builder: (context, state) => const LandingScreen(),
    ),
    GoRoute(
      path: '/details/:id',
      name: CatBreedDetail.name,
      builder: (context, state) {
        final catBreed = state.extra as CatBreed; 
        return CatBreedDetail(catBreed: catBreed);
      },
    ),
  ],
);