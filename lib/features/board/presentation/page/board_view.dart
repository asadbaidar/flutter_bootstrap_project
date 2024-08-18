part of 'page.dart';

class BoardView extends StatelessWidget {
  const BoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        customTitle: TitleView(),
      ),
      body: _BoardBody(),
    );
  }
}

class _BoardBody extends StatelessWidget {
  const _BoardBody();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(LocaleStrings.board),
    );
  }
}
