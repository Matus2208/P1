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

Button homeButton;
Button aboutButton;
Button gamesButton;
Button supportButton;
Button contactButton;


int buttonX = 40;
int buttonY = 0;
int buttonW = 320;
int buttonH = 110;


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
  about = new Page(0, 0, 1920, 1080, about_header, about_page);
  games = new Page(0, 0, 1920, 1080, games_header, games_page);
  support = new Page(0, 0, 1920, 1080, support_header, support_page);
  contact = new Page(0, 0, 1920, 1080, contact_header, contact_page);

  homeButton = new Button(buttonX, buttonX+buttonW, buttonY, buttonH);
  aboutButton = new Button(buttonX+buttonW, buttonX+2*buttonW, buttonY, buttonH);
  gamesButton = new Button(buttonX+2*buttonW, buttonX+3*buttonW, buttonY, buttonH);
  supportButton = new Button(buttonX+3*buttonW, buttonX+4*buttonW, buttonY, buttonH);
  contactButton = new Button(buttonX+4*buttonW, buttonX+5*buttonW, buttonY, buttonH);
  
  home.show();
}

void draw()
{
  if (mousePressed && homeButton.clicked()) {
    home.show();
  }
  if (mousePressed && aboutButton.clicked()) {
    about.show();
  }
  if (mousePressed && gamesButton.clicked()) {
    games.show();
  }
  if (mousePressed && supportButton.clicked()) {
    support.show();
  }
  if (mousePressed && contactButton.clicked()) {
    contact.show();
  }
}
//println(mouseX,mouseY);
