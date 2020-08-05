IntList boxesX1, boxesY1, boxesX2, boxesY2;
StringList binds, keys, shownKeys;
String alphabetChars, typed;
int frameRate, mouseIndex;


void setup() {
  alphabetChars = "`~1!2@3#4$5%6^7&8*9(0)-_=+qQwWeErRtTyYuUiIoOpP[{]}\\|aAsSdDfFgGhHjJkKlL;:'\\zZxXcCvVbBnNmM,<.>/? ";
  typed = "";
  keys = new StringList();
  shownKeys = new StringList();
  keys.append("ESCAPE");
  shownKeys.append("ESC");
  keys.append("F1");
  shownKeys.append("F1");
  keys.append("F2");
  shownKeys.append("F2");
  keys.append("F3");
  shownKeys.append("F3");
  keys.append("F4");
  shownKeys.append("F4");
  keys.append("F5");
  shownKeys.append("F5");
  keys.append("F6");
  shownKeys.append("F6");
  keys.append("F7");
  shownKeys.append("F7");
  keys.append("F8");
  shownKeys.append("F8");
  keys.append("F9");
  shownKeys.append("F9");
  keys.append("F10");
  shownKeys.append("F10");
  keys.append("F11");
  shownKeys.append("F11");
  keys.append("F12");
  shownKeys.append("F12");
  keys.append("SCROLLLOCK");
  shownKeys.append("SL");
  keys.append("NUMLOCK");
  shownKeys.append("PB");
  keys.append("`");
  shownKeys.append("`");
  keys.append("1");
  shownKeys.append("1");
  keys.append("2");
  shownKeys.append("2");
  keys.append("3");
  shownKeys.append("3");
  keys.append("4");
  shownKeys.append("4");
  keys.append("5");
  shownKeys.append("5");
  keys.append("6");
  shownKeys.append("6");
  keys.append("7");
  shownKeys.append("7");
  keys.append("8");
  shownKeys.append("8");
  keys.append("9");
  shownKeys.append("9");
  keys.append("0");
  shownKeys.append("0");
  keys.append("-");
  shownKeys.append("-");
  keys.append("=");
  shownKeys.append("=");
  keys.append("BACKSPACE");
  shownKeys.append("←");
  keys.append("INS");
  shownKeys.append("INS");
  keys.append("HOME");
  shownKeys.append("HM");
  keys.append("PGUP");
  shownKeys.append("PU");
  keys.append("KP_SLASH");
  shownKeys.append("/");
  keys.append("KP_MULTIPLY");
  shownKeys.append("*");
  keys.append("KP_MINUS");
  shownKeys.append("-");
  keys.append("TAB");
  shownKeys.append("TAB");
  keys.append("Q");
  shownKeys.append("Q");
  keys.append("W");
  shownKeys.append("W");
  keys.append("E");
  shownKeys.append("E");
  keys.append("R");
  shownKeys.append("R");
  keys.append("T");
  shownKeys.append("T");
  keys.append("Y");
  shownKeys.append("Y");
  keys.append("U");
  shownKeys.append("U");
  keys.append("I");
  shownKeys.append("I");
  keys.append("O");
  shownKeys.append("O");
  keys.append("P");
  shownKeys.append("P");
  keys.append("[");
  shownKeys.append("[");
  keys.append("]");
  shownKeys.append("]");
  keys.append("\\");
  shownKeys.append("\\");
  keys.append("DEL");
  shownKeys.append("DEL");
  keys.append("END");
  shownKeys.append("END");
  keys.append("PGDN");
  shownKeys.append("PD");
  keys.append("KP_HOME");
  shownKeys.append("7");
  keys.append("KP_UPARROW");
  shownKeys.append("8");
  keys.append("KP_PGUP");
  shownKeys.append("9");
  keys.append("KP_PLUS");
  shownKeys.append("+");
  keys.append("CAPSLOCK");
  shownKeys.append("CAPS");
  keys.append("A");
  shownKeys.append("A");
  keys.append("S");
  shownKeys.append("S");
  keys.append("D");
  shownKeys.append("D");
  keys.append("F");
  shownKeys.append("F");
  keys.append("G");
  shownKeys.append("G");
  keys.append("H");
  shownKeys.append("H");
  keys.append("J");
  shownKeys.append("J");
  keys.append("K");
  shownKeys.append("K");
  keys.append("L");
  shownKeys.append("L");
  keys.append("SEMICOLON");
  shownKeys.append(";");
  keys.append("'");
  shownKeys.append("'");
  keys.append("ENTER");
  shownKeys.append("ENTER");
  keys.append("KP_LEFTARROW");
  shownKeys.append("4");
  keys.append("KP_5");
  shownKeys.append("5");
  keys.append("KP_RIGHTARROW");
  shownKeys.append("6");
  keys.append("SHIFT");
  shownKeys.append("↑");
  keys.append("Z");
  shownKeys.append("Z");
  keys.append("X");
  shownKeys.append("X");
  keys.append("C");
  shownKeys.append("C");
  keys.append("V");
  shownKeys.append("V");
  keys.append("B");
  shownKeys.append("B");
  keys.append("N");
  shownKeys.append("N");
  keys.append("M");
  shownKeys.append("M");
  keys.append(",");
  shownKeys.append(",");
  keys.append(".");
  shownKeys.append(".");
  keys.append("/");
  shownKeys.append("/");
  keys.append("RSHIFT");
  shownKeys.append("↑");
  keys.append("UPARROW");
  shownKeys.append("↑");
  keys.append("KP_END");
  shownKeys.append("1");
  keys.append("KP_DOWNARROW");
  shownKeys.append("2");
  keys.append("KP_PGDN");
  shownKeys.append("3");
  keys.append("KP_ENTER");
  shownKeys.append("ENTER");
  keys.append("CTRL");
  shownKeys.append("CTRL");
  keys.append("LWIN");
  shownKeys.append("WIN");
  keys.append("ALT");
  shownKeys.append("ALT");
  keys.append("SPACE");
  shownKeys.append("SPACE");
  keys.append("RALT");
  shownKeys.append("ALT");
  keys.append("RWIN");
  shownKeys.append("WIN");
  keys.append("RCTRL");
  shownKeys.append("CTRL");
  keys.append("LEFTARROW");
  shownKeys.append("←");
  keys.append("DOWNARROW");
  shownKeys.append("↓");
  keys.append("RIGHTARROW");
  shownKeys.append("→");
  keys.append("KP_INS");
  shownKeys.append("0");
  keys.append("KP_DEL");
  shownKeys.append(".");
  keys.append("MOUSE5");
  shownKeys.append("M5");
  keys.append("MWHEELUP");
  shownKeys.append("MW↑");
  keys.append("MOUSE4");
  shownKeys.append("M4");
  keys.append("MOUSE1");
  shownKeys.append("M1");
  keys.append("MOUSE3");
  shownKeys.append("M3");
  keys.append("MOUSE2");
  shownKeys.append("M2");
  keys.append("MWHEELDOWN");
  shownKeys.append("MW↓");

  binds = new StringList();
  for (int i=0; i<keys.size(); i++) {
    binds.append("");
  }


  IntList boxes1X = new IntList();
  IntList boxes1Y = new IntList();
  IntList boxes2X = new IntList();
  IntList boxes2Y = new IntList();

  boxesX1 = new IntList();
  boxesY1 = new IntList();
  boxesX2 = new IntList();
  boxesY2 = new IntList();

  frameRate = 60;
  size(1010, 430);
  frameRate(frameRate);
  PImage img = loadImage("full keyboard.png");
  background(1, 2, 3);
  image(img, 0, 0);

  loadPixels();
  int y = 0;
  while (y < height) {
    int x = 0;
    while (x < width) {
      if (pixels[x + y * width] != color(1, 2, 3)) {
        boolean alreadyABox = false;
        for (int i = 0; i < boxesX1.size(); i++) {
          if (pointInRegion(x, y, boxesX1.get(i), boxesY1.get(i), boxesX2.get(i) + boxesX1.get(i), boxesY2.get(i) + boxesY1.get(i))) {
            alreadyABox = true;
            break;
          }
        }
        if (!alreadyABox) {
          boxesX1.append(x);
          boxesY1.append(y);
          while (pixels[x + y * width] != color(1, 2, 3)) {
            x++;
          }
          x--;
          while (pixels[x + y * width] != color(1, 2, 3)) {
            y++;
          }
          y--;
          boxesX2.append(x - boxesX1.get(boxesX1.size()-1));
          boxesY2.append(y - boxesY1.get(boxesY1.size()-1));
          y = boxesY1.get(boxesY1.size()-1);
        }
      }
      x++;
    }
    y++;
  }
  loadBinds();
}








void draw() {
  background(0);
  mouseIndex = -1;
  for (int i = 0; i < boxesX1.size(); i++) {
    int x1 = boxesX1.get(i);
    int y1 = boxesY1.get(i);
    int x2 = boxesX2.get(i) + x1;
    int y2 = boxesY2.get(i) + y1;
    if (pointInRegion(mouseX, mouseY, x1, y1, x2, y2)) {
      mouseIndex = i;
    }
  }

  //draw boxes
  for (int i = 0; i < boxesX1.size(); i++) {
    int x1 = boxesX1.get(i);
    int y1 = boxesY1.get(i);
    int x2 = boxesX2.get(i) + x1;
    int y2 = boxesY2.get(i) + y1;
    if (binds.get(i) == "") {
      if (mouseIndex == i) {
        fill(128, 0, 0);
        stroke(255, 0, 0);
      } else {
        fill(255, 0, 0);
        stroke(128, 0, 0);
      }
    } else {
      if (mouseIndex == i) {
        fill(0, 128, 0);
        stroke(0, 256, 0);
      } else {
        fill(0, 255, 0);
        stroke(0, 128, 0);
      }
    }
    strokeWeight(2);
    rect(x1, y1, x2 - x1, y2 - y1);
  }

  //draw text
  for (int i = 0; i < boxesX1.size(); i++) {
    int x1 = boxesX1.get(i);
    int y1 = boxesY1.get(i);
    int x2 = boxesX2.get(i) + x1;
    int y2 = boxesY2.get(i) + y1;
    if (binds.get(i) == "") {
      fill(255);
    } else {
      fill(0);
    }
    textAlign(CENTER, CENTER);
    textSize(15);
    //draw text label
    String text = "";
    textLeading(15);
    if (textWidth(shownKeys.get(i)) > boxesX2.get(i)) {
      for (int j = 0; j < shownKeys.get(i).length(); j ++) {
        text += shownKeys.get(i).charAt(j) + "\n";
      }
    } else {
      text = shownKeys.get(i);
    }
    text(text, x1 + (x2 - x1) / 2, y1 + (y2 - y1) / 2);
  }

  //save button
  stroke(127 + int(pointInRegion(mouseX, mouseY, width - 55, 5, width - 5, 48)) * 128);
  fill(255 - int(pointInRegion(mouseX, mouseY, width - 55, 5, width - 5, 48)) * 128);
  rect(width - 55, 5, 50, 43);

  //load button
  stroke(127 + int(pointInRegion(mouseX, mouseY, width - 110, 5, width - 60, 48)) * 128);
  fill(255 - int(pointInRegion(mouseX, mouseY, width - 110, 5, width - 60, 48)) * 128);
  rect(width - 110, 5, 50, 43);

  //save load text
  fill(0);
  textSize(15);
  textAlign(CENTER, CENTER);
  text("Save", width - 5 - 50 + 50/2, 5 + 43/2);
  text("Load", width - 5 - 105 + 50/2, 5 + 43/2);

  textSize(25);
  textAlign(RIGHT, TOP);
  fill(255);
  text("Visual helper for Source Engine bindings", width - 5, height - 115);
  textSize(10);
  text("Type a command then click a key to bind it to that key", width - 5, height - 85);
  text("Mouse over a bound key to see its bind", width - 5, height - 75);
  text("Click a bound key to unbind it", width - 5, height - 65);
  textSize(20);
  textAlign(RIGHT, BOTTOM);
  fill(255, 0, 0);
  String temp;
  Boolean greater;
  if (mouseIndex > -1) {
    temp = binds.get(mouseIndex);
    greater = textWidth(temp) > 650;
    while (textWidth(temp) > 650) {
      temp = temp.substring(1);
    }
    if (greater) {
      temp = "..." + temp;
    }
    text(temp, width-10, height-30);
  }
  temp = typed;
  greater = textWidth(temp) > 650;
  while (textWidth(temp) > 650) {
    temp = temp.substring(1);
  }
  if (greater) {
    temp = "..." + temp;
  }
  if ((frameCount / (float)frameRate) % 0.5 < 0.25) {
    temp = "> " + temp;
  }
  text(temp, width - 10, height - 10);
}

void mousePressed() {
  if (mouseIndex > -1) {
    binds.set(mouseIndex, typed);
    typed = "";
  } else {
    //save / load buttons
    if (pointInRegion(mouseX, mouseY, width - 110, 5, width - 60, 48)) {
      loadBinds();
    } else {
      if (pointInRegion(mouseX, mouseY, width - 55, 5, width - 5, 48)) {
        saveBinds();
      }
    }
  }
}

void loadBinds() {
  String[] bindsString = loadStrings("binds.cfg");
  if (bindsString != null) {
    for (int i = 0; i < binds.size(); i++) {
      binds.set(i,"");
    }
    for (int i = 0; i < bindsString.length; i++) {
      //is it a bind command?
      if (bindsString[i].length() > 5) {
        if (bindsString[i].substring(0, 5).equals("bind ")) {
          //yes

          //finding key to bind to
          String curKey = bindsString[i].substring(5);
          int j = 0;
          while (curKey.charAt(j) != ' ') {
            j++;
          }
          curKey = curKey.substring(0, j).toUpperCase();
          //remove quotation marks around it if there are any
          if (curKey.charAt(0) == '"') {
            curKey = curKey.substring(1, curKey.length() - 1);
          }
          //now we have key
          //next we need to match it to the key list
          for (int findIndex = 0; findIndex < keys.size(); findIndex++) {
            if (keys.get(findIndex).equals(curKey)) {
              //found it
              //next is finding the command
              String str = bindsString[i].substring(j+5);
              while (str.charAt(0) == ' ') {
                //remove leading spaces in front of command
                str = str.substring(1);
              }
              //remove quotation marks around command if there are any
              if (str.charAt(0) == '"') {
                str = str.substring(1, str.length() - 1);
              }
              binds.set(findIndex, str);
              break;
            }
          }
        }
      }
    }
  }
}

void saveBinds() {
  int maxKeyLength = 0;
  int countBinds = 0;
  for (int i = 0; i < keys.size(); i++) {
    if (binds.get(i) != "") {
      countBinds++;
      if (keys.get(i).length() > maxKeyLength) {
        maxKeyLength = keys.get(i).length();
      }
    }
  }
  String[] bindsString = new String[countBinds + 2]; //need 2 extra lines for credit and unbindall
  bindsString[0] = "//this bind config was made using AMJ's Source Binder. https://github.com/ThisAMJ/sourcebinder ";
  bindsString[1] = "unbindall";
  int j = 2;
  for (int i = 0; i < binds.size(); i++) {
    if (binds.get(i) != "") {
      String out = "bind " + keys.get(i);
      //align all commands horizontally
      while (out.length() - 5 < maxKeyLength + 1) {
        out += " ";
      }
      out += '"' + binds.get(i) + '"';
      bindsString[j] = out;
      j++;
    }
  }
  saveStrings("binds.cfg", bindsString);
}

void keyPressed() {
  if (key == '') {
    //backspace
    if (typed.length() > 0) {
      typed = typed.substring(0, typed.length()-1);
    }
  } else {
    //only allow standard english keyboard keys, disallowing quotation marks " because they break the bind
    for (int i=0; i<alphabetChars.length(); i++) {
      if (alphabetChars.charAt(i)==key) {
        typed += key;
        break;
      }
    }
  }
}

Boolean pointInRegion(int pX, int pY, int x1, int y1, int x2, int y2) {
  return(pX >= x1 & pY >= y1 & pX <= x2 & pY <= y2);
}
