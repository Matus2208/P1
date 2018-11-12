class Button
{
  int x;
  int y;
  int _width;
  int _height;
<<<<<<< HEAD
  PImage button;
  float col;
=======
  PImage meme;
  float dingdong;
>>>>>>> efed92907dc4b796724f3e8df817fbdd4e45b9e6
  Button (int X, int Y, int Width, int Height, PImage Img){
    x = X;
    y = Y;
    _width = Width;
    _height = Height;
    meme = Img;
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
