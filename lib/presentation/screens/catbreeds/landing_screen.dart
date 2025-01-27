import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_cat_api/presentation/providers/catbreeds/catbreeds_providers.dart';
import 'package:the_cat_api/presentation/widgets/widgets.dart';

class LandingScreen extends StatelessWidget {
  static const name = 'landing-screen';
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _LandingView(),
    );
  }
}

class _LandingView extends ConsumerStatefulWidget {
  const _LandingView();

  @override
  _LandingViewState createState() => _LandingViewState();
}

class _LandingViewState extends ConsumerState<_LandingView> {
  @override
  void initState() {
    super.initState();
    ref.read(getCatBreedsProvider.notifier).load();
  }

  @override
  Widget build(BuildContext context) {
    final catBreeds = ref.watch(getCatBreedsProvider);
    return Column(
      children: [
        const CustomAppBar(),
        CatBreedCard(catBreeds: catBreeds),
        //CatFacts(),
      ],
    );
  }
}
