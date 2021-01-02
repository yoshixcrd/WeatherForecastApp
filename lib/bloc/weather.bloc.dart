import 'package:date_format/date_format.dart';
class BlocWeather {
 
  // Retorna o Background de acordo com a condição climatica
  String getBackground(var condition) {
    var conditionImage = {
      "storm": "assets/background/bg-tempestade.png",
      "snow": "assets/background/bg-neve.png",
      "hail": "assets/background/bg-granizo.png",
      "rain": "assets/background/bg-chuvoso.png",
      "fog": "assets/background/bg-neblina.png",
      "clear_day": "assets/background/bg-ensolarado.png",
      "clear_night": "assets/background/bg-noite.png",
      "cloud": "assets/background/bg-nublado.png",
      "cloudly_day": "assets/background/bg-nublado.png",
      "cloudly_night": "assets/background/bg-nublado.png",
      "none_day": "assets/background/bg-ensolarado.png",
      "none_night": "assets/background/bg-noite.png",
    };
    return conditionImage[condition];
  }
  // Retorna a Image Central de Acordo com a condição climatica
  String getImage(var condition) {
    var conditionImage = {
      "storm": "assets/image/tempestade.png",
      "snow": "assets/image/neve.png",
      "hail": "assets/image/granizo.png",
      "rain": "assets/image/chuva.png",
      "fog": "assets/image/neblina.png",
      "clear_day": "assets/image/sol-pequeno.png",
      "clear_night": "assets/image/noite.png",
      "cloud": "assets/image/sol-com-nuvem.png",
      "cloudly_day": "assets/image/sol-com-nuvem.png",
      "cloudly_night": "assets/image/sol-com-nuvem.png",
      "none_day": "assets/image/sol-pequeno.png",
      "none_night": "assets/image/noite.png",
    };
    return conditionImage[condition];
  }
  // Retorna o dia da semana
  String getDay(var dia) {
    var diaSemana = {
      "Dom": "Domingo",
      "Seg": "Segunda",
      "Ter": "Terça",
      "Qua": "Quarta",
      "Qui": "Quinta",
      "Sex": "Sexta",
      "Sáb": "Sábado",
    };
    return diaSemana[dia];
  }
  // Retorna a condição climatica formatadax
  String getDescription(var condition) {
    var describeCondition = {
      "storm": "Tempestade",
      "snow": "Neve",
      "hail": "Granizo",
      "rain": "Chuva",
      "fog": "Neblina",
      "clear_day": "Dia Limpo",
      "clear_night": "Noite Limpa",
      "cloud": "Nublado",
      "cloudly_day": "Dia Nublado",
      "cloudly_night": "Noite Nublada",
      "none_day": "Dia Limpo",
      "none_night": "Noite Limpa",
    };
    return describeCondition[condition];
  }

  String getDataFormatada(var data) {
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
    int mesTemp = now.month;   
    return formatDate(now, [dd, ' de ', meses[mesTemp], ' de ', yyyy]);
  }
}
