void Tuki(){
  if (month_or_day == "月") {
      if (mouseX >= 38 && mouseX <= 143) {
        if (mouseY >= 193 && mouseY <= 233) {
          niti_color = 255;
        } else {
          niti_color = 0;
        }
      } else {
        niti_color = 0;
      }

      if (mouseX >= 38 && mouseX <= 143) {
        if (mouseY >= 233 && mouseY <= 273) {
          jikan_color = 255;
        } else {
          jikan_color = 0;
        }
      } else {
        jikan_color = 0;
      }
    }
}