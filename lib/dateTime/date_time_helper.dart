//convert dateTime Object into a string yyyymmdd

String convertDateTimeToString(DateTime dateTime) {
//year in format yyyy

  String year = dateTime.year.toString();

//month in mm

  String month = dateTime.month.toString();
  if (month.length == 1) {
    month = '0' + month;
  }
  //date in format dd

  String date = dateTime.day.toString();

  if (date.length == 1) {
    date = '0' + date;
  }

  String yyyymmdd = year + month + date;
  return yyyymmdd;
}
