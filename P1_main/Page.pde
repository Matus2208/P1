class Page {

  int headerX;
  int headerY;
  int pageX;
  int pageY;
  int w;
  int h;
  PImage page;
  PImage header;

  Page (int X1, int Y1, int X2, int Y2, PImage Header, PImage Page) {
    headerX = X1;
    headerY = Y1;
    pageX = X2;
    pageY = Y2;
    w = Page.width;
    h = Page.height;
    header = Header;
    page = Page;
  }

  //This function shows the page first, then the header
  void show() {
    image(page, pageX, pageY, w, h);
    image(header, headerX, headerY);
    
    // Attempt to constrain the page
    if (pageY > 0) {
      pageY -= 2;
    }
    if (pageY < -h/2){
      pageY += 2;
    }
  }

  //This function scrolls the page on the screen
  void scroll(float count) {
    if (count < 0) {
      this.pageY += 50;
    }
    if (count > 0) {
      this.pageY -= 50;
    }
  }
}
