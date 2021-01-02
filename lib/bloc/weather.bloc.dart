import 'package:date_format/date_format.dart';

class Weather {
  
  String codition;
  String day;
  DateTime now = DateTime.now();
  var meses = {
      1: "Janeiro",
      2: "Fevereiro",
      3: "Março",
      4: "Abril",
      5: "Maio",
      6: "Junho",
      7: "Julho",
      8: "Agosto",
      9: "Setembro",
      10: "Outubro",
      11: "Novembro",
      12: "Dezembro",
    };
  var clima = {
      "storm": {"describe":"Tempestade","background":"assets/background/bg-tempestade.png", "image": "assets/image/tempestade.png"},
      "snow": {"describe":"Neve","background":"assets/background/bg-neve.png", "image":"assets/image/neve.png"},
      "hail": {"describe":"Granizo","background":"assets/background/bg-granizo.png", "image":"assets/image/granizo.png"},
      "rain": {"describe":"Chuva","background":"assets/background/bg-chuvoso.png", "image":"assets/image/chuva.png"},
      "fog": {"describe":"Neblina","background":"assets/background/bg-neblina.png", "image":"assets/image/neblina.png"},
      "clear_day": {"describe":"Dia Limpo","background":"assets/background/bg-ensolarado.png", "image":"assets/image/sol-pequeno.png"},
      "clear_night": {"describe":"Noite Limpa","background":"assets/background/bg-noite.png", "image":"assets/image/noite.png"},
      "cloud": {"describe":"Nublado","background":"assets/background/bg-nublado.png", "image":"assets/image/sol-com-nuvem.png"},
      "cloudly_day": {"describe":"Dia Nublado","background":"assets/background/bg-nublado.png", "image":"assets/image/sol-com-nuvem.png"},
      "cloudly_night": {"describe":"Noite Nublado","background":"assets/background/bg-nublado.png", "image":"assets/image/sol-com-nuvem.png"},
      "none_day": {"describe":"Dia Limpo","background":"assets/background/bg-ensolarado.png", "image":"assets/image/sol-pequeno.png"},
      "none_night": {"describe":"Noite Limpa","background":"assets/background/bg-noite.png", "image":"assets/image/noite.png"},
    };
  
  var diaSemana = {
      "Dom": "Domingo",
      "Seg": "Segunda",
      "Ter": "Terça",
      "Qua": "Quarta",
      "Qui": "Quinta",
      "Sex": "Sexta",
      "Sáb": "Sábado",
      "Sat": "Sábado",
  };


  Weather({this.codition: "", this.day: ""});

  String get background => clima[this.codition]["background"];
  String get image => clima[this.codition]["image"];
  String get descricao => clima[this.codition]["describe"];
  String get data => formatDate(now, [dd, ' de ', meses[now.month], ' de ', yyyy]);
  String get dia => diaSemana[this.day];
}