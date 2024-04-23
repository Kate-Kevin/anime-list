
String getCurrentSeason(){
  final month = DateTime.now().month;

  if (month >=1 && month <=3) {

    return 'winter';

  }else if(month >=4 && month <=6){

    return 'spring';

  }else if(month >=7 && month <=9){

    return 'summer';

  }else if(month >=10 && month <=12){

    return 'fall';

  }else{

    throw Exception('Error Season');

  }
}

int getCurrentYear(){
  int year = DateTime.now().year;
  return year;
}

String getCurrentYearString(){
  String year = getCurrentYear().toString();
  return year;
}

List<String>listSeason(){
  List<String> items = [
      'winter',
      'spring',
      'summer',
      'fall',
    ];
  return items;
}

List<String>listYear(){

  int currentYear = getCurrentYear();
  int currentMonth = DateTime.now().month;
  List<String> items = [];

  for (int year = 2000; year < currentYear; year++) {
    items.add(year.toString());
  }
  if (currentMonth >= DateTime.october) {
    items.add(currentYear.toString());
  }
  return items;
}