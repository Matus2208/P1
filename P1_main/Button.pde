class Button
{
  int x;
  int y;
  int _width;
  int _height;
  PImage img;
  Button (int X, int Y, int Width, int Height, PImage Img){
    x = X;
    y = Y;
    _width = Width;
    _height = Height;
    img = Img;
  }
  void show()
  //This function shows the button on the screen
  {
    
  }
  boolean checkForClick()
  //Checks if the button is being pressed and returns true if it is
  {
    return false;
    //return true;
  }
  
  
}
