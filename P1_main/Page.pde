<<<<<<< HEAD
class Page{
  
  int x;
  int y;
  int w;
  int h;
  PImage page;
  PImage header;
  Page (int X, int Y, int Width, int Height, PImage Header, PImage Page) {
    x = X;
    y = Y;
    w = Width;
    h = Height;
    header = Header;
    page = Page;
=======
class Page
{
  int Y = 0;
  int _width;
  int _height;
  PImage pageImg;
  PImage headerImg;
  Page (int Width, int Height, PImage Img){
    _width = Width;
    _height = Height;
    img = Img;
>>>>>>> e9bcd7bd25814d4f89d911e0af600d7676ab9db6
  }
  
  //This function shows the page on the screen
  void show() {
    
  }

  //This function scrolls the page on the screen
  void scroll() {
    
  }
}
