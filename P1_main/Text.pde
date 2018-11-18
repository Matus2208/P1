class Text
{
  int x;
  int y;
  int w;
  int h;
  String textString;
  
  Text (int X, int Y, int Width, int Height, String text){
    x = X;
    y = Y;
    w = Width;
    h = Height;
    textString = text;
  }
  
  //This function shows the text on the screen
  void show()  {
    textSize(26);
    text(textString, x, y);
  }
  
  void setY(int textY) {
    y = textY;
  }
}