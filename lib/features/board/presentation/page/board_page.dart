part of 'page.dart';

class BoardPage extends StatelessWidget {
  const BoardPage({super.key});

  static String route() => RouteUri.tab(subroute());

  static String subroute() => TabItem.board.name;

  @override
  Widget build(BuildContext context) {
    return const BoardView();
  }
}
