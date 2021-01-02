import 'package:date_format/date_format.dart';
class BlocWeather {
 
  // Retorna o Background de acordo com a condição climatica
  String getBackground(var condition) {
    switch (condition) {
      case "storm":
        return "assets/background/bg-tempestade.png";
        break;
      case "snow":
        return "assets/background/bg-neve.png";
        break;
      case "hail":
        return "assets/background/bg-granizo.png";
        break;
      case "rain":
        return "assets/background/bg-chuvoso.png";
        break;
      case "fog":
        return "assets/background/bg-neblina.png";
        break;
      case "clear_day":
        return "assets/background/bg-ensolarado.png";
        break;
      case "clear_night":
        return "assets/background/bg-noite.png";
        break;
      case "cloud":
        return "assets/background/bg-nublado.png";
        break;
      case "cloudly_day":
        return "assets/background/bg-nublado.png";
        break;
      case "cloudly_night":
        return "assets/background/bg-nublado.png";
        break;
      case "none_day":
        return "assets/background/bg-ensolarado.png";
        break;
      case "none_night":
        return "assets/background/bg-noite.png";
        break;
    }
  }
  // Retorna a Image Central de Acordo com a condição climatica
  String getImage(var condition) {
    switch (condition) {
      case "storm":
        return "assets/image/tempestade.png";
        break;
      case "snow":
        return "assets/image/neve.png";
        break;
      case "hail":
        return "assets/image/granizo.png";
        break;
      case "rain":
        return "assets/image/chuva.png";
        break;
      case "fog":
        return "assets/image/neblina.png";
        break;
      case "clear_day":
        return "assets/image/sol-pequeno.png";
        break;
      case "clear_night":
        return "assets/image/noite.png";
        break;
      case "cloud":
        return "assets/image/sol-com-nuvem.png";
        break;
      case "cloudly_day":
        return "assets/image/sol-com-nuvem.png";
        break;
      case "cloudly_night":
        return "assets/image/sol-com-nuvem.png";
        break;
      case "none_day":
        return "assets/image/sol-pequeno.png";
        break;
      case "none_night":
        return "assets/image/noite.png";
        break;
    }
  }
  // Retorna o dia da semana
  String getDay(var dia) {
    switch (dia) {
      case "Dom":
        return "Domingo";
        break;
      case "Seg":
        return "Segunda";
        break;
      case "Ter":
        return "Terça";
        break;
      case "Qua":
        return "Quarta";
        break;
      case "Qui":
        return "Quinta";
        break;
      case "Sex":
        return "Sexta";
        break;
      case "Sáb":
        return "Sábado";
        break;
      case "Sat":
        return "Sábado";
        break;
      default:
        return "Week Day";
        break;
    }
  }
  // Retorna a condição climatica formatadax
  String getDescription(var condition) {
    switch (condition) {
      case "storm":
        return "Tempestade";
        break;
      case "Neve":
        return "assets/image/neve.png";
        break;
      case "hail":
        return "Granizo";
        break;
      case "rain":
        return "Chuva";
        break;
      case "fog":
        return "Neblina";
        break;
      case "clear_day":
        return "Dia Limpo";
        break;
      case "clear_night":
        return "Noite Limpa";
        break;
      case "cloud":
        return "Nublado";
        break;
      case "cloudly_day":
        return "Dia Nublado";
        break;
      case "cloudly_night":
        return "Noite Nublada";
        break;
      case "none_day":
        return "Dia Limpo";
        break;
      case "none_night":
        return "Noite Limpa";
        break;
    }
  }

  String getDataFormatada(var data) {
    DateTime now = DateTime.now();
    
    var mesTemp = now.month;
    var mes;
    switch(mesTemp) {
      case 1:
        mes = "Janeiro";
        break;
      case 2:
        mes = "Fevereiro";
        break;
      case 3:
        mes = "Março";
        break;
      case 4:
        mes = "Abril";
        break;
      case 5:
        mes = "Maio";
        break;
      case 6:
        mes = "Junho";
        break;
      case 7:
        mes = "Julho";
        break;
      case 8:
        mes = "Agosto";
        break;
      case 9:
        mes = "Setembro";
        break;
      case 10:
        mes = "Outubro";
        break;
      case 11:
        mes = "Novembro";
        break;
      case 12:
        mes = "Dezembro";
        break;
    }
    
    return formatDate(now, [dd, ' de ', mes, ' de ', yyyy]);
  }
}
