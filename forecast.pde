String baseURL = "http://weather.livedoor.com/forecast/webservice/json/v1?city=";
String city = "017010";//函館
String title;
JSONArray forecasts;

void get_Forecast() {
  fill(0);
  textSize(15);
  textAlign(CENTER);
  text(title, width/2, 50);
  for (int i = 0; i < forecasts.size()-1; i++) {
    JSONObject f = forecasts.getJSONObject(i);
    String s = f.getString("dateLabel") + ":" + f.getString("telop");
    JSONObject t = f.getJSONObject("temperature");
    if (!t.isNull("min")) {
      String d = t.getJSONObject("min").getString("celsius");
      s = s + ", 最低気温:" + d+"℃";
    }
    if (!t.isNull("max")) {
      String d = t.getJSONObject("max").getString("celsius");
      s = s + ", 最高気温:" + d+"℃";
    }    
    textAlign(BASELINE);
    fill(0);
    text("["+s+"]", 0, 80+30*i);
  }
}