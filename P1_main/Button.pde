class Button {

  int x1;
  int y1;
  int x2;
  int y2;
  Button (int X1, int X2, int Y1, int Y2) {
    x1 = X1;
    x2 = X2;
    y1 = Y1;
    y2 = Y2;
  }

  boolean clicked() {
    //Checks if a button is being pressed and returns true if it is
    if (mouseX > x1 && mouseX < x2 && mouseY > y1 && mouseY < y2) {
      return true;
    } else {
      return false;
    }
  }
}
