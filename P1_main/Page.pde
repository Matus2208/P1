class Page {

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
  }

  //This function shows the page on the screen
  void show() {
    image(page, x, y);
    image(header, x+37, y);
  }

  //This function scrolls the page on the screen
  void scroll() {
  }
}
