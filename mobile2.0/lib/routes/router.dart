import 'package:nylo_framework/nylo_framework.dart';
import '../../resources/pages/home_page.dart';

/*
|--------------------------------------------------------------------------
| App Router
|
| * [Tip] Create pages faster 🚀
| Run the below in the terminal to create new a page.
| "flutter pub run nylo_framework:main make:page my_page"
| Learn more https://nylo.dev/docs/4.x/router
|--------------------------------------------------------------------------
*/

appRouter() => nyRoutes((router) {

  router.route("/", (context) => MyHomePage(title: "Hello World"));

  // Add your routes here

  // router.route("/new-page", (context) => NewPage(), transition: PageTransitionType.fade);
});
