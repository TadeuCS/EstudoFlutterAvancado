import 'package:estudo_flutter_intermediario/modules/home/domain/entities/filme.dart';
import 'package:estudo_flutter_intermediario/modules/home/presenter/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  // var controller = Modular.get<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomLogo(
          width: 90,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  color: Colors.black,
                  child: Column(
                    children: const [
                      ContainerNewEpisodes(),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Watch Season 2 Now',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.black87,
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      ValueListenableBuilder<List<Filme>>(
                        valueListenable: controller.filmes,
                        builder: (context, value, child) => CustomPreviews(
                            filmes: value.reversed.toList(),
                            header: 'Previews',
                            shape: BoxShape.circle,
                            controller: controller),
                      ),
                      ValueListenableBuilder<List<Filme>>(
                        valueListenable: controller.filmes,
                        builder: (context, value, child) => CustomPreviews(
                            filmes: value,
                            header: 'Popular on NetFlix',
                            controller: controller),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomPreviews extends StatelessWidget {
  final String header;
  final BoxShape shape;
  final HomeController? controller;
  const CustomPreviews(
      {Key? key,
      required this.filmes,
      this.header = '',
      this.shape = BoxShape.rectangle,
      this.controller})
      : super(key: key);

  final List<Filme> filmes;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: shape == BoxShape.circle ? 0 : 15),
          child: Text(
            header,
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: Colors.white),
          ),
        ),
        SizedBox(
          height: 150,
          child: ValueListenableBuilder(
            valueListenable: controller!.loading,
            builder: (context, value, child) => Visibility(
              visible: !controller!.loading.value,
              replacement: const Center(
                child: CircularProgressIndicator(),
              ),
              child: ListView.builder(
                  padding: const EdgeInsets.all(0),
                  itemCount: filmes.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    var item = filmes[index];
                    return InkWell(
                      onTap: () {
                        Modular.to.pushNamed('movie');
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 8),
                        width: MediaQuery.of(context).size.width / 3.8,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            onError: (_, __) => const NetworkImage(
                                'https://colegioeducador.com.br/wp-content/uploads/2019/04/placeholder-image.jpg'),
                            image: NetworkImage(item.urlImage),
                            fit: BoxFit.cover,
                          ),
                          shape: shape,
                          // borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    );
                  }),
            ),
          ),
        )
      ],
    );
  }
}

class ContainerNewEpisodes extends StatelessWidget {
  const ContainerNewEpisodes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 4,
          decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://www.themoviedb.org/t/p/original/pNY9g2SPPKI6oGo9jvt0AG6iZKT.jpg'))),
        ),
        const Padding(
          padding: EdgeInsets.all(12),
          child: CustomLogo(),
        ),
        Positioned(
          left: 12,
          bottom: 12,
          child: Container(
            color: Colors.red,
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Text(
              'NEW EPISODES',
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomLogo extends StatelessWidget {
  final double width;
  const CustomLogo({
    Key? key,
    this.width = 70,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.network(
      'https://image.tmdb.org/t/p/original/wwemzKWzjKYJFfCeiB57q3r4Bcm.svg',
      width: width,
      fit: BoxFit.cover,
    );
  }
}
