PImage home_header;
PImage home_page;
PImage about_header;
PImage about_page;
PImage games_header;
PImage games_page;
PImage support_header;
PImage support_page;
PImage contact_header;
PImage contact_page;

Page home;
Page about;
Page games;
Page support;
Page contact;

void setup()
{
  //size(1920, 1080);
  fullScreen();
  home_header = loadImage("home_header.png");
  home_page = loadImage("home_page.png");
  about_header = loadImage("about_header.png");
  about_page = loadImage("about_page.png");
  games_header = loadImage("games_header.png");
  games_page = loadImage("games_page.png");
  support_header = loadImage("support_header.png");
  support_page = loadImage("support_page.png");
  contact_header = loadImage("contact_header.png");
  contact_page = loadImage("contact_page.png");

  home = new Page(0, 0, 1920, 1080, home_header, home_page);
}

void draw()
{
  home.show();
}

void mousePressed()
{
  
}
