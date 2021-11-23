import 'package:dio/dio.dart';
import 'package:estudo_flutter_intermediario/modules/home/infra/datasources/home_datasource.dart';

class HomeDatasourceImpl2 implements HomeDatasource {
  final Dio _dio;
  HomeDatasourceImpl2(this._dio);
  @override
  Future<Map<String, dynamic>> listaFilmes() async {
    try {
      await _dio.get('4/movie');
    } catch (e) {
      rethrow;
    }
    return data;
  }

  Map<String, dynamic> data = {
    "page": 1,
    "results": [
      {
        "adult": false,
        "backdrop_path": "/cinER0ESG0eJ49kXlExM0MEWGxW.jpg",
        "genre_ids": [28, 12, 14],
        "id": 566525,
        "original_language": "en",
        "original_filme": "Shang-Chi and the Legend of the Ten Rings",
        "detalhe":
            "Shang-Chi precisa confrontar o passado que pensou ter deixado para trás. Ao mesmo tempo, ele é envolvido em uma teia de mistérios da organização conhecida como Dez Anéis.",
        "popularity": 6665.737,
        "url": "/ArrOBeio968bUuUOtEpKa1teIh4.jpg",
        "release_date": "2021-09-01",
        "filme": "Shang-Chi e a Lenda dos Dez Anéis",
        "video": false,
        "vote_average": 7.9,
        "vote_count": 3379
      },
      {
        "adult": false,
        "backdrop_path": "/dK12GIdhGP6NPGFssK2Fh265jyr.jpg",
        "genre_ids": [28, 35, 80, 53],
        "id": 512195,
        "original_language": "en",
        "original_filme": "Red Notice",
        "detalhe":
            "No mundo do crime internacional, a INTERPOL lança um Alerta Vermelho, o que inicia uma caçada para capturar a mais notória ladra de artes do globo.",
        "popularity": 6263.951,
        "url": "/pe17f8VDfzbvbHSAKAlcORtBHmW.jpg",
        "release_date": "2021-11-04",
        "filme": "Alerta Vermelho",
        "video": false,
        "vote_average": 6.9,
        "vote_count": 1200
      },
      {
        "adult": false,
        "backdrop_path": "/lNyLSOKMMeUPr1RsL4KcRuIXwHt.jpg",
        "genre_ids": [878, 28, 12],
        "id": 580489,
        "original_language": "en",
        "original_filme": "Venom: Let There Be Carnage",
        "detalhe":
            "O relacionamento entre Eddie e Venom (Tom Hardy) está evoluindo. Buscando a melhor forma de lidar com a inevitável simbiose, esse dois lados descobrem como viver juntos e, de alguma forma, se tornarem melhores juntos do que separados.",
        "popularity": 4141.331,
        "url": "/h5UzYZquMwO9FVn15R2eK2itmHu.jpg",
        "release_date": "2021-09-30",
        "filme": "Venom: Tempo de Carnificina",
        "video": false,
        "vote_average": 6.8,
        "vote_count": 2039
      },
      {
        "adult": false,
        "backdrop_path": "/zBkHCpLmHjW2uVURs5uZkaVmgKR.jpg",
        "genre_ids": [16, 35, 10751],
        "id": 585245,
        "original_language": "en",
        "original_filme": "Clifford the Big Red Dog",
        "detalhe":
            "O amor de uma criança por um filhote faz o cachorro crescer de forma inimaginável.",
        "popularity": 3269.139,
        "url": "/s7Cn3OsY32tH5cyz7CHxYdEiXMn.jpg",
        "release_date": "2021-11-10",
        "filme": "Clifford: O Gigante Cão Vermelho",
        "video": false,
        "vote_average": 7.8,
        "vote_count": 170
      },
      {
        "adult": false,
        "backdrop_path": "/u5Fp9GBy9W8fqkuGfLBuuoJf57Z.jpg",
        "genre_ids": [12, 28, 53],
        "id": 370172,
        "original_language": "en",
        "original_filme": "No Time to Die",
        "detalhe":
            "Bond deixou o serviço ativo e está desfrutando de uma vida tranquila na Jamaica. Sua paz é interrompida quando o seu velho amigo Felix Leiter, da CIA, aparece pedindo sua ajuda. A missão de resgatar um cientista sequestrado acaba sendo muito mais difícil do que o esperado, deixando Bond no caminho de um vilão misterioso e armado com uma nova tecnologia perigosa.",
        "popularity": 3491.344,
        "url": "/luE0KG1rWfUptbgNtlNtL5sihyd.jpg",
        "release_date": "2021-09-29",
        "filme": "007: Sem Tempo para Morrer",
        "video": false,
        "vote_average": 7.6,
        "vote_count": 2033
      },
      {
        "adult": false,
        "backdrop_path": "/oE6bhqqVFyIECtBzqIuvh6JdaB5.jpg",
        "genre_ids": [878, 18, 12],
        "id": 522402,
        "original_language": "en",
        "original_filme": "Finch",
        "detalhe":
            "Eu um mundo pós-apocalíptico, um robô construído para proteger o cachorro do seu criador, que está a beira da morte, aprende sobre a vida, o amor e a amizade, aprendendo o que significa sêr um ser humano.",
        "popularity": 2620.508,
        "url": "/jKuDyqx7jrjiR9cDzB5pxzhJAdv.jpg",
        "release_date": "2021-11-04",
        "filme": "Finch",
        "video": false,
        "vote_average": 8.2,
        "vote_count": 1100
      },
      {
        "adult": false,
        "backdrop_path": "/4EJSMQOM1bZPHvzqAQe87suBxdf.jpg",
        "genre_ids": [10752, 36, 18, 12],
        "id": 885110,
        "original_language": "en",
        "original_filme": "Amina",
        "detalhe":
            "Em Zazzau do século 16, agora Zaria, Nigéria, Amina deve utilizar suas habilidades e táticas militares para defender o reino de sua família. Baseado em uma história verídica.",
        "popularity": 2047.062,
        "url": "/gII53HAH7UA1yx189vROMzWA5ib.jpg",
        "release_date": "2021-11-04",
        "filme": "Amina",
        "video": false,
        "vote_average": 6.8,
        "vote_count": 14
      },
      {
        "adult": false,
        "backdrop_path": "/4gKxQIW91hOTELjY5lzjMbLoGxB.jpg",
        "genre_ids": [28, 53, 878],
        "id": 763164,
        "original_language": "en",
        "original_filme": "Apex",
        "detalhe":
            "O ex-policial James Malone está cumprindo prisão perpétua por um crime que não cometeu. Ele tem uma chance de liberdade se ele sobreviver a um jogo mortal de Apex, no qual seis caçadores pagam pelo prazer de caçar outro humano em uma ilha remota. Ele aceita e, assim que chega, o inferno desaba.",
        "popularity": 1863.698,
        "url": "/chTkFGToW5bsyw3hgLAe4S5Gt3.jpg",
        "release_date": "2021-11-12",
        "filme": "Apex",
        "video": false,
        "vote_average": 5.7,
        "vote_count": 183
      },
      {
        "adult": false,
        "backdrop_path": "/vIPIyTJqcgOKgKcExCvTDpLpTYW.jpg",
        "genre_ids": [28, 12, 878],
        "id": 634649,
        "original_language": "en",
        "original_filme": "Spider-Man: No Way Home",
        "detalhe":
            "Peter Parker é desmascarado e não consegue mais separar sua vida normal dos grandes riscos de ser um super-herói. Quando ele pede ajuda ao Doutor Estranho, os riscos se tornam ainda mais perigosos, e o forçam a descobrir o que realmente significa ser o Homem-Aranha.",
        "popularity": 1782.83,
        "url": "/kxFxtYdaIaGsp3N9KEtPSj7yqEE.jpg",
        "release_date": "2021-12-15",
        "filme": "Homem-Aranha: Sem Volta Para Casa",
        "video": false,
        "vote_average": 0,
        "vote_count": 0
      },
      {
        "adult": false,
        "backdrop_path": "/lyvszvJJqqI8aqBJ70XzdCNoK0y.jpg",
        "genre_ids": [28, 12, 878],
        "id": 524434,
        "original_language": "en",
        "original_filme": "Eternals",
        "detalhe":
            "Após os eventos de \"Vingadores: Ultimato\", os Eternos, uma raça alienígena imortal criada pelos Celestiais que vivem em segredo na Terra há mais de 7000 anos, se reúnem após uma tragédia inesperada para proteger a humanidade de seus colegas malignos: os Deviantes.",
        "popularity": 1835.483,
        "url": "/eDHOutMxLMgComnVhUK0Xfwunu5.jpg",
        "release_date": "2021-11-03",
        "filme": "Eternos",
        "video": false,
        "vote_average": 7.1,
        "vote_count": 1136
      },
      {
        "adult": false,
        "backdrop_path": "/eeijXm3553xvuFbkPFkDG6CLCbQ.jpg",
        "genre_ids": [878, 12],
        "id": 438631,
        "original_language": "en",
        "original_filme": "Dune",
        "detalhe":
            "Em um futuro distante, planetas são comandados por casas nobres que fazem parte de um império feudal intergalático. Paul Atreides é um jovem cuja família toma o controle do planeta deserto Arrakis, também conhecido como Duna. A única fonte da especiaria Melange, a substância mais importante do cosmos, Arrakis se mostra ser um planeta nem um pouco fácil de governar.",
        "popularity": 1485.963,
        "url": "/uzERcfV2rSHNhW5eViQiO9hNiA7.jpg",
        "release_date": "2021-09-15",
        "filme": "Duna",
        "video": false,
        "vote_average": 8,
        "vote_count": 4179
      },
      {
        "adult": false,
        "backdrop_path": "/lV3UFPPxDIPelh46G9oySXN9Mcz.jpg",
        "genre_ids": [10749, 18],
        "id": 744275,
        "original_language": "en",
        "original_filme": "After We Fell",
        "detalhe":
            "Embora a história de amor entre Tessa Young e Hardin Scott tenha passado por muitas complicações, desta vez o problema é mais complexo do que nunca. Agora que Tessa tomou uma das decisões mais importantes de sua vida, tudo mudou completamente. Os segredos que vêm à tona sobre suas famílias colocam em risco seu relacionamento e seu futuro juntos. Embora a jovem saiba que Hardin a ama, os dois estão cercados de ciúme, ódio e perdão. Será que o amor entre os dois será o suficiente para manter seu relacionamento?",
        "popularity": 1697.09,
        "url": "/eZwC4FW5rFvYa0gzZJIHQwLSgbz.jpg",
        "release_date": "2021-09-01",
        "filme": "After: Depois do Desencontro",
        "video": false,
        "vote_average": 7.2,
        "vote_count": 941
      },
      {
        "adult": false,
        "backdrop_path": "/8Y43POKjjKDGI9MH89NW0NAzzp8.jpg",
        "genre_ids": [35, 28, 12, 878],
        "id": 550988,
        "original_language": "en",
        "original_filme": "Free Guy",
        "detalhe":
            "Um caixa de banco preso a uma entediante rotina tem sua vida virada de cabeça para baixo quando ele descobre que é personagem em um brutalmente realista vídeo game de mundo aberto. Agora ele precisa aceitar sua realidade e lidar com o fato de que é o único que pode salvar o mundo.",
        "popularity": 1439.169,
        "url": "/jXlGeLOg2RKHmV9CinVaIB4ijKU.jpg",
        "release_date": "2021-08-11",
        "filme": "Free Guy: Assumindo o Controle",
        "video": false,
        "vote_average": 7.8,
        "vote_count": 3765
      },
      {
        "adult": false,
        "backdrop_path": "/d0mpUFKzoPwF1KsdjHpkkaYSvKm.jpg",
        "genre_ids": [37],
        "id": 618162,
        "original_language": "en",
        "original_filme": "The Harder They Fall",
        "detalhe":
            "Em Harder They Fall, quando o fora da lei Nat Love (Jonathan Majors) descobre que seu maior inimigo, Rufus Buck (Idris Elba), será libertado da prisão, ele reúne seu bando em uma busca incessante por vingança. Aqueles que cavalgam com ele incluem o seu antigo amor Stagecoach Mary, seus homens de temperamento forte Bill Pickett e Jack Beckwourth. Rufus ainda conta com a ajuda do \"Traiçoeiro\" Trudy Smith e Cherokee Bill. É de se tomar cuidado, pois esse não é um grupo que costuma a perder qualquer luta.",
        "popularity": 1325.696,
        "url": "/29WYtxffy1NJhxXZ8al5XJ8US1s.jpg",
        "release_date": "2021-10-22",
        "filme": "Vingança & Castigo",
        "video": false,
        "vote_average": 6.8,
        "vote_count": 332
      },
      {
        "adult": false,
        "backdrop_path": "/mu8RKavbv7Ml48twHQ6XVk7zw8e.jpg",
        "genre_ids": [28, 80, 53],
        "id": 796499,
        "original_language": "en",
        "original_filme": "Army of Thieves",
        "detalhe":
            "Nesta história que antecede Army of the Dead, uma mulher misteriosa convida o caixa de banco Dieter para roubar cofres superprotegidos na Europa.",
        "popularity": 1272.141,
        "url": "/lxPZYziABs5MUmyV6tUOO5mTK2z.jpg",
        "release_date": "2021-10-27",
        "filme": "Exército de Ladrões: Invasão da Europa",
        "video": false,
        "vote_average": 7,
        "vote_count": 757
      },
      {
        "adult": false,
        "backdrop_path": "/a8tH0jl37366bLVyPB08dncgqqd.jpg",
        "genre_ids": [10751, 35, 28],
        "id": 654974,
        "original_language": "en",
        "original_filme": "Home Sweet Home Alone",
        "detalhe":
            "Max Mercer é um menino travesso e engenhoso que é deixado em casa sozinho quando sua família sai de férias para o Japão. Quando um casal que tenta recuperar uma relíquia de família se volta para a casa da família Mercer, Max será o único a protegê-la de intrusos e fará tudo ao seu alcance para mantê-los fora.",
        "popularity": 1452.553,
        "url": "/7cVFRHlN2gPWIEQnz6Yo43fYVkL.jpg",
        "release_date": "2021-11-12",
        "filme": "Esqueceram de Mim no Lar, Doce Lar",
        "video": false,
        "vote_average": 5.6,
        "vote_count": 154
      },
      {
        "adult": false,
        "backdrop_path": "/pKgfWzxOpvGV3MQ0kLjLdjKAzUe.jpg",
        "genre_ids": [18, 80],
        "id": 785538,
        "original_language": "pt",
        "original_filme": "7 Prisioneiros",
        "detalhe":
            "O jovem Mateus sai do interior em busca de uma oportunidade de trabalho em um ferro velho de São Paulo comandado por Luca. Chegando lá, acaba se tornando vítima de um sistema de trabalho análogo à escravidão. Mas, como Mateus aprende com o tempo, até seu patrão tem um patrão. Se ele quiser encontrar uma saída, até onde ele deverá ir o que deverá se tornar?",
        "popularity": 1388.409,
        "url": "/5dCIBGXnIuPdP1gmlElEDMTcIGT.jpg",
        "release_date": "2021-10-22",
        "filme": "7 Prisioneiros",
        "video": false,
        "vote_average": 7.7,
        "vote_count": 70
      },
      {
        "adult": false,
        "backdrop_path": "/bwPXMrDyPDaSiQaOmUo10GLn0rf.jpg",
        "genre_ids": [27],
        "id": 775943,
        "original_language": "es",
        "original_filme": "Llanto Maldito",
        "detalhe":
            "Em sua última tentativa para salvar seu casamento, Sara e Óscar decidem tirar férias em uma cabana. Ao chegar, eventos\r estranhos corroem o ambiente tenso entre eles: uma mulher ronda a casa prevendo eventos que desafiam a natureza.",
        "popularity": 1092.922,
        "url": "/50SJI2Cbs4m9vhtrd9TVFEIX9n4.jpg",
        "release_date": "2021-07-29",
        "filme": "Pranto Maldito",
        "video": false,
        "vote_average": 4.4,
        "vote_count": 10
      },
      {
        "adult": false,
        "backdrop_path": "/t9i5kSC6mYPRtc9hDlFeziLESa8.jpg",
        "genre_ids": [16, 35, 10751, 14],
        "id": 876716,
        "original_language": "en",
        "original_filme": "Ciao Alberto",
        "detalhe":
            "O monstro marinho que adora diversão, Alberto, quer de todo coração provar seu valor para o seu impassível mentor, Massimo.",
        "popularity": 1856.501,
        "url": "/lgQ4vA8BnMgXfSAVbxHiPcqapB7.jpg",
        "release_date": "2021-11-12",
        "filme": "Oi, Alberto",
        "video": false,
        "vote_average": 7.7,
        "vote_count": 162
      },
      {
        "adult": false,
        "backdrop_path": "/HVcza6tJtWFrLriuh3Ano4Vt46.jpg",
        "genre_ids": [28, 12, 14],
        "id": 1930,
        "original_language": "en",
        "original_filme": "The Amazing Spider-Man",
        "detalhe":
            "Peter Parker está tentando saber mais sobre sua origem. Ele encontra uma pasta que pertenceu ao seu pai e quer descobrir por que seus pais desapareceram. Sua busca o leva a Oscorp e ao dr. Curt Connors, que tem como alterego o letal Lagarto.",
        "popularity": 1150.752,
        "url": "/dODKvv9o9BOemWavnulutJBHM80.jpg",
        "release_date": "2012-06-23",
        "filme": "O Espetacular Homem-Aranha",
        "video": false,
        "vote_average": 6.6,
        "vote_count": 13609
      }
    ],
    "total_pages": 500,
    "total_results": 10000
  };
}
