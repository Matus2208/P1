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

Text homeText1;
int homeText1Y = 1000;
Text homeText2;
int homeText2Y = 1500;

int buttonX = 40;
int buttonY = 0;
int buttonW = 310;
int buttonH = 110;

float wheelCount;

int pageNumber = 1;

void setup() {
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

  home = new Page(0+37, 0, 0, 0, home_header, home_page);
  about = new Page(0+37, 0, 0, 0, about_header, about_page);
  games = new Page(0+37, 0, 0, 0, games_header, games_page);
  support = new Page(0+37, 0, 0, 0, support_header, support_page);
  contact = new Page(0+37, 0, 0, 0, contact_header, contact_page);

  homeButton = new Button(buttonX, buttonX+buttonW, buttonY, buttonH);
  aboutButton = new Button(buttonX+buttonW, buttonX+2*buttonW, buttonY, buttonH);
  gamesButton = new Button(buttonX+2*buttonW, buttonX+3*buttonW, buttonY, buttonH);
  supportButton = new Button(buttonX+3*buttonW, buttonX+4*buttonW, buttonY, buttonH);
  contactButton = new Button(buttonX+4*buttonW, buttonX+5*buttonW, buttonY, buttonH);
  //(int X, int Y, int Width, int Height, String text)
  homeText1 = new Text(50, 0, 100, 100, "Text1");
  homeText2 = new Text(50, 0, 100, 100, "Text2");
}

void draw() {
  // Checking for button clicks and reseting pages
  if (mousePressed && homeButton.clicked()) {
    pageNumber = 1;
    home.pageY = 0;
  }
  if (mousePressed && aboutButton.clicked()) {
    pageNumber = 2;
    about.pageY = 0;
  }
  if (mousePressed && gamesButton.clicked()) {
    pageNumber = 3;
    games.pageY = 0;
  }
  if (mousePressed && supportButton.clicked()) {
    pageNumber = 4;
    support.pageY = 0;
  }
  if (mousePressed && contactButton.clicked()) {
    pageNumber = 5;
    contact.pageY = 0;
  }
  // Displaying the corresponding page
  switch(pageNumber) {
  case 1: 
    home.show();
    home.scroll(wheelCount);
    homeText1.setY(homeText1Y + home.pageY);
    homeText1.show();
    homeText2.setY(homeText2Y + home.pageY);
    homeText2.show();
    break;
  case 2: 
    about.show();
    about.scroll(wheelCount);
    break;
  case 3:
    games.show();
    games.scroll(wheelCount);
    break;
  case 4:
    support.show();
    support.scroll(wheelCount);
    break;
  case 5:
    contact.show();
    contact.scroll(wheelCount);
    break;
  }
  wheelCount = 0;
}

// Checking for mouse wheel event

void mouseWheel(MouseEvent event) {
  wheelCount = event.getCount();
}
