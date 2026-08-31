import 'package:go_router/go_router.dart';
import 'package:myproject/cart/controller/binding.dart';
import 'package:myproject/cart/view/index.dart';
import 'package:myproject/homepage/controller/binding.dart';
import 'package:myproject/homepage/view/index.dart';
import 'package:myproject/product-details/controller/binding.dart';
import 'package:myproject/product-details/view/index.dart';
import 'package:myproject/splashScreen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/splashscreen',
  routes: [
    GoRoute(
      path: '/splashscreen',
      name: SplashScreen.name,
      builder: (context, state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      path: '/homepage',
      name: Homepage.name,
      builder: (context, state) {
        HomepageBinding().dependencies();
        return const Homepage();
      },
    ),
    GoRoute(
      path: '/product-details',
      name: ProductDetails.name,
      builder: (context, state) {
        ProductDetailsBinding().dependencies();
        final extraMap = state.extra as Map<String, dynamic>;
        final id = extraMap['productId'] as int;

        return ProductDetails(productId: id);
      },
    ),
    GoRoute(
      path: '/cartpage',
      name: Cartpage.name,
      builder: (context, state) {
        CartPageBinding().dependencies();
        return const Cartpage();
      },
    ),
  ],
  // redirect: (context, state) {
  //   final isLoginPath = state.uri.path == '/login';

  // },
);

final GoRouter getRoute = router;
