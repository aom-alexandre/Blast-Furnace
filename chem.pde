int stage = 0;
int trial = 0;
PImage back;
PImage chem;
PImage blast;
PImage finall;
PImage wrong;
PImage hint;
int hints = 0;

PImage carbon;
PImage oxygen;
PImage silicon;
PImage iron;
PImage calcium;

PImage carbonb;
PImage oxygenb;
PImage siliconb;
PImage ironb;
PImage calciumb;

PImage feo;
PImage coo;
PImage co;
PImage casio;
PImage o2;
PImage caco3;
PImage caoI;
PImage sio;

int cc = 0;
int oc = 0;
int sic = 0;
int fec = 0;
int cac = 0;

int co2 = 0;
int co1 = 0;
int casio3 = 0;
int c = 0;
int fe2o3 = 0;
int oo = 0;
int caco = 0;
int cao = 0;
int fe = 0;
int sio2 = 0;

int cor = 0;
int cr = 0;
int hematite = 0;
int slag = 0;
int caor = 0;

PImage base;
PImage hematiteI;
PImage coI;
PImage crI;
PImage caorI;
PImage slagI;

int place = 0;
int p = 0;
int placed = 1;
int x, y;

PImage coke;
PImage carbonI;
PImage ore;
PImage ref;
PImage ot;
PImage slagIm;
PImage lime;

PImage pyro;
PImage pyroland;

void setup(){
  size(1350, 900);
  background(255, 255, 255);
  back = loadImage("back.jpg");
  chem = loadImage("images.jpg");
  blast = loadImage("blast.jpg");
  finall = loadImage("final.JPG");
  wrong = loadImage("wrong.jpg");
  hint = loadImage("hint.png");

  carbon = loadImage("carbon.png");
  oxygen = loadImage("oxygen.png");
  silicon = loadImage("silicon.png");
  iron = loadImage("iron.png");
  calcium = loadImage("calcium.png");

  carbonb = loadImage("carbonb.png");
  oxygenb = loadImage("oxygenb.png");
  siliconb = loadImage("siliconb.png");
  ironb = loadImage("ironb.png");
  calciumb = loadImage("calciumb.png");

  feo = loadImage("fe2o3.png");
  coo = loadImage("co2.png");
  co = loadImage("co.jpg");
  casio = loadImage("casio3.png");
  o2 = loadImage("o2.png");
  caoI = loadImage("cao.jpg");
  caco3 = loadImage("caco3.png");
  sio = loadImage("sio2.jpg");

  base = loadImage("base.jpg");
  hematiteI = loadImage("hematite.jpg");
  slagI = loadImage("slag.jpg");
  caorI = loadImage("caor.png");
  crI = loadImage("crI.png");
  coI = loadImage("coI.png");

  coke = loadImage("coke.jpg");
  carbonI = loadImage("carbonI.png");
  ore = loadImage("ore.jpg");
  ref = loadImage("ref.jpg");
  ot = loadImage("ot.jpg");
  slagIm = loadImage("slagI.jpg");
  lime = loadImage("lime.jpg");
  
  pyro = loadImage("pyro.png");
  pyroland = loadImage("pyroland.jpg");

  println("To crete the elements click on the boxes of atoms to add a new atom to the list. When you have the correct amount of each atom to form a molecule press 'e'. When you have all molecules, you pass to the next stage.");
}

void begin(){
  image(back, 0, 0);
  fill(0, 0, 255);
  rect(1050, 800, 300, 100);
  fill(0, 0, 0);
  textSize(100);
  text("Start", 1100, 890);

  image(chem, width/2 - chem.width/2, height/5 - chem.height/2);
  image(blast, width/2 - blast.width/2, height/2 - blast.height/2);

  if ((mouseX > 1050)&&(mouseY > 800)&&(mousePressed)){
    background(255, 255, 255);
    stage++;
  }
}

void pile(){
  fill(255, 0, 0);
  rect(0, 0, 1350, 50);
  fill(0, 0, 0);
  textSize(25);
  text("First create the reagents and products that are needed to make the blast furnace work.", 5, 30);

  fill(255, 235, 205);

  rect(width/2 - carbon.width/2 - 7, 93, 107, 107);
  rect(width*2/3 - carbon.width/2 - 7, height - oxygen.height - 107, 107, 107);
  rect(width/3 - carbon.width/2 - 7, height - oxygen.height - 107, 107, 107);
  rect(width/5 - carbon.width/2 - 7, height/2 - oxygen.height - 7, 107, 107);
  rect(width*4/5 - carbon.width/2 - 7, height/2 - oxygen.height - 7, 107, 107);

  image(oxygenb, width/2 - carbon.width/2, 100);
  image(carbonb, width*2/3 - carbon.width/2, height - oxygen.height - 100);
  image(siliconb, width/3 - carbon.width/2, height - oxygen.height - 100);
  image(calciumb, width/5 - carbon.width/2, height/2 - oxygen.height);
  image(ironb, width*4/5 - carbon.height/2, height/2 - oxygen.height);
}

void create(){
  if (((mouseX > width/2 - carbon.width/2 - 7)&&(mouseX < width/2 - carbon.width/2 + 107))&&((mouseY > 93)&&(mouseY < 200))&&(mousePressed)){
    image(oxygen, width/2 - carbon.width/2 + 300, height/2 - carbon.height/2);

    fill(255, 255, 255);
    rect(width/2 - carbon.width/2 + 300, height/2 + carbon.height/2 + 75, 30, 30);
    oc = oc + 1;
    fill(0, 0, 0);
    textSize(25);
    text(oc, width/2 - carbon.width/2 + 300, height/2 + carbon.height/2 + 100);
    delay(200);
  }
  if (((mouseX > width*2/3 - carbon.width/2 - 7)&&(mouseX < width*2/3 - carbon.width/2 + 100))&&((mouseY > height - carbon.height - 107)&&(mouseY < height - carbon.height))&&(mousePressed)){
    image(carbon, width/2 - carbon.width/2 + 150, height/2 - carbon.height/2);

    fill(255, 255, 255);
    rect(width/2 - carbon.width/2 + 150, height/2 + carbon.height/2 + 75, 30, 30);
    cc = cc + 1;
    fill(0, 0, 0);
    textSize(25);
    text(cc, width/2 - carbon.width/2 + 150, height/2 + carbon.height/2 + 100);
    delay(200);
  }
  if (((mouseX > width/3 - carbon.width/2 - 7)&&(mouseX < width/3 - carbon.width/2 + 100))&&((mouseY > height - carbon.height - 107)&&(mouseY < height - carbon.height))&&(mousePressed)){
    image(silicon, width/2 - carbon.width/2, height/2 - carbon.height/2);

    fill(255, 255, 255);
    rect(width/2 - carbon.width/2, height/2 + carbon.height/2 + 75, 30, 30);
    sic = sic + 1;
    fill(0, 0, 0);
    textSize(25);
    text(sic, width/2 - carbon.width/2, height/2 + carbon.height/2 + 100);
    delay(200);
  }
  if (((mouseX > width*4/5 - carbon.width/2 - 7)&&(mouseX < width*4/5 - carbon.width/2 + 100))&&((mouseY > height/2 - carbon.height - 7)&&(mouseY < height/2 + 7))&&(mousePressed)){
    image(iron, width/2 - carbon.width/2 - 150, height/2 - carbon.height/2);

    fill(255, 255, 255);
    rect(width/2 - carbon.width/2 - 150, height/2 + carbon.height/2 + 75, 30, 30);
    fec = fec + 1;
    fill(0, 0, 0);
    textSize(25);
    text(fec, width/2 - carbon.width/2 - 150, height/2 + carbon.height/2 + 100);
    delay(200);
  }
  if (((mouseX > width/5 - carbon.width/2 - 7)&&(mouseX < width/5 - carbon.width/2 + 100))&&((mouseY > height/2 - carbon.height - 7)&&(mouseY < height/2 + 7))&&(mousePressed)){
    image(calcium, width/2 - carbon.width/2 - 300, height/2 - carbon.height/2);

    fill(255, 255, 255);
    rect(width/2 - carbon.width/2 - 300, height/2 + carbon.height/2 + 75, 30, 30);
    cac = cac + 1;
    fill(0, 0, 0);
    textSize(25);
    text(cac, width/2 - carbon.width/2 - 300, height/2 + carbon.height/2 + 100);
    delay(200);
  }

  if (oc == 1){
    image(oxygen, width/2 - carbon.width/2 + 300, height/2 - carbon.height/2);
  }
  if (cc == 1){
    image(carbon, width/2 - carbon.width/2 + 150, height/2 - carbon.height/2);
  }
  if (sic == 1){
    image(silicon, width/2 - carbon.width/2, height/2 - carbon.height/2);
  }
  if (fec == 1){
    image(iron, width/2 - carbon.width/2 - 150, height/2 - carbon.height/2);
  }
  if (cac == 1){
    image(calcium, width/2 - carbon.width/2 - 300, height/2 - carbon.height/2);
  }
}

void molecule(){
  if ((oc == 2)&&(cc == 1)&&(cac == 0)&&(sic == 0)&&(fec == 0)&&(co2 == 0)&&(trial == 1)){
    co2 = 1;
    trial = 0;

    oc = 0;
    cc = 0;
    background(255, 255, 255);
  }
  if ((oc == 1)&&(cc == 1)&&(cac == 0)&&(sic == 0)&&(fec == 0)&&(co1 == 0)&&(trial == 1)){
    co1 = 1;
    trial = 0;

    oc = 0;
    cc = 0;
    background(255, 255, 255);
  }
  if ((oc == 0)&&(cc == 1)&&(cac == 0)&&(sic == 0)&&(fec == 0)&&(c == 0)&&(trial == 1)){
    c = 1;
    trial = 0;

    cc = 0;
    background(255, 255, 255);
  }
  if ((oc == 3)&&(cc == 0)&&(cac == 0)&&(sic == 0)&&(fec == 2)&&(fe2o3 == 0)&&(trial == 1)){
    fe2o3 = 1;
    trial = 0;

    oc = 0;
    fec = 0;
    background(255, 255, 255);
  }
  if ((oc == 2)&&(cc == 0)&&(cac == 0)&&(sic == 0)&&(fec == 0)&&(oo == 0)&&(trial == 1)){
    oo = 1;
    trial = 0;

    oc = 0;
    background(255, 255, 255);
  }
  if ((oc == 3)&&(cc == 0)&&(cac == 1)&&(sic == 1)&&(fec == 0)&&(casio3 == 0)&&(trial == 1)){
    casio3 = 1;
    trial = 0;

    oc = 0;
    cac = 0;
    sic = 0;
    background(255, 255, 255);
  }
  if ((oc == 3)&&(cc == 1)&&(cac == 1)&&(sic == 0)&&(fec == 0)&&(caco == 0)&&(trial == 1)){
    caco = 1;
    trial = 0;

    oc = 0;
    cac = 0;
    cc = 0;
    background(255, 255, 255);
  }  
  if ((oc == 1)&&(cc == 0)&&(cac == 1)&&(sic == 0)&&(fec == 0)&&(cao == 0)&&(trial == 1)){
    cao = 1;
    trial = 0;

    oc = 0;
    cac = 0;
    background(255, 255, 255);
  }
  if ((oc == 0)&&(cc == 0)&&(cac == 0)&&(sic == 0)&&(fec == 1)&&(fe == 0)&&(trial == 1)){
    fe = 1;
    trial = 0;

    fec = 0;
    background(255, 255, 255);
  }
  if ((oc == 2)&&(cc == 0)&&(cac == 0)&&(sic == 1)&&(fec == 0)&&(sio2 == 0)&&(trial == 1)){
    sio2 = 1;
    trial = 0;

    sic = 0;
    oc = 0;
    background(255, 255, 255);
  }

  if (trial == 2){
    delay(1000);
    background(255, 255, 255);
    trial = 0;
  }
  if (trial == 1){
    image(wrong, width/2 - wrong.width/2, height/2 - wrong.height/2);
    trial = 2;

    oc = 0;
    cc = 0;
    cac = 0;
    fec = 0;
    sic = 0;
  }
}

void form(){
  if (casio3 == 1){
    image(casio, 0, 100);
  }
  if (fe2o3 == 1){
    image(feo, 850, 100);
  }
  if (co2 == 1){
    image(coo, 1000, 500);
  }
  if (co1 == 1){
    image(co, 1000, 700);
  }
  if (c == 1){
    image(carbon, 150, 100);
  }
  if (oo == 1){
    image(o2, 25, 700);
  }
  if (cao == 1){
    image(caoI, 1100, 100);
  }
  if (caco == 1){
    image(caco3, 50, 550);
  }
  if (fe == 1){
    image(iron, 250, 100);
  }
  if (sio2 == 1){
    image(sio, 1000, 200);
  }
}

void hint1(){
  image(hint, 507, height - hint.height);
  fill(0, 0, 0);
  textSize(20);
  if (hints == 0){
    text("Need a hint?", 645, height - hint.height + 20);
    text("Yes   No", 700, height - hint.height + 60);
  }
  if ((mouseX > 700)&&(mouseX < 733)&&(mouseY > height - hint.height + 40)&&(mouseY < height - hint.height + 60)&&(mousePressed)&&(hints < 1)){
    hints++;
    background(255, 255, 255);
  }
  if ((mouseX > 754)&&(mouseX < 779)&&(mouseY > height - hint.height + 40)&&(mouseY < height - hint.height + 60)&&(mousePressed)&&(hints == 0)){
    hints--;
    background(255, 255, 255);
  }

  if (hints == 1){
    text("Here is a list of what", 645, height - hint.height + 20);
    text("to do:", 645, height - hint.height + 40);
    text("Hematite", 710, height - hint.height + 60);
    text("Slag", 710, height - hint.height + 80);
    text("Limestone", 710, height - hint.height + 100);
    text("Lime", 710, height - hint.height + 120);
    text("Coke", 710, height - hint.height + 140);
    text("Sand", 710, height - hint.height + 160);
    text("Others", 710, height - hint.height + 180);
  }
  if (hints == -1){
    text("I'll see you soon.", 645, height - hint.height + 20);
    text("Help!", 700, height - hint.height + 60);
  }
}

void finish(){
  if ((c == 1)&&(co1 == 1)&&(co2 == 1)&&(oo == 1)&&(casio3 == 1)&&(fe2o3 == 1)&&(cao == 1)&&(caco == 1)&&(fe == 1)&&(sio2 == 1)){
    fill(0, 0, 255);
    rect(width/2 - 117.5, height/2 - 50, 235, 100);
    fill(0, 0, 0);
    textSize(100);
    text("Next", width/2 - 117.5, height/2 + 40);
    if (((mouseX > width/2 - 100)&&(mouseX < width/2 + 100))&&((mouseY > height/2 - 50)&&(mouseY < height/2 + 50))&&(mousePressed)){
      background(255, 255, 255);
      stage++;

      co2 = 0;
      co1 = 0;
      casio3 = 0;
      c = 0;
      fe2o3 = 0;
      oo = 0;
      caco = 0;
      cao = 0;
      fe = 0;
      sio2 = 0;
      
      hints = 0;
    }
  }
}

void start2(){
  fill(255, 0, 0);
  rect(0, 0, 1350, 70);
  fill(0, 0, 0);
  textSize(25);
  text("Now with the molecules formed, you need to create the chemical equations for the blast furnace.", 5, 30);
  text("First make the left hand of the reaction and enter, and then create the right hand and enter again.", 5, 60);

  textSize(50);
  text("C  CO  CO  O  CaSiO  CaO  CaCO  Fe O  Fe  SiO", 100, 125);
  textSize(30);
  text("2", 340, 140);
  text("2", 410, 140);
  text("3", 590, 140);
  text("3", 890, 140);
  text("2", 975, 140);
  text("3", 1030, 140);
  text("2", 1230, 140);

  fill(255, 0, 0);
  textSize(100);
  text("  +     →", 50, 500 - 10);
  text("  +   →", 50, 600 - 10);
  text("      +     →", 50, 700 - 10);
  text("      +      →     +", 50, 800 - 10);
  text("          →      +", 50, 900 - 10);
}

void put(){
  if ((mouseX > 100)&&(mouseX < 135)&&(mouseY > 75)&&(mouseY < 125)&&(mousePressed)){
    c++;

    fill(255, 255, 255);
    rect(100, 140, 43, 65);
    fill(0, 0, 0);
    textSize(75);
    text(c, 100, 200);
    text("C", 140, 200);
    delay(200);
  }
  if ((mouseX > 168)&&(mouseX < 238)&&(mouseY > 75)&&(mouseY < 125)&&(mousePressed)){
    co1++;

    fill(255, 255, 255);
    rect(300, 140, 43, 65);
    fill(0, 0, 0);
    textSize(75);
    text(co1, 300, 200);
    text("CO", 340, 200);
    delay(200);
  }
  if ((mouseX > 270)&&(mouseX < 380)&&(mouseY > 75)&&(mouseY < 125)&&(mousePressed)){
    co2++;

    fill(255, 255, 255);
    rect(550, 140, 43, 65);
    fill(0, 0, 0);
    textSize(75);
    text(co2, 550, 200);
    text("CO", 590, 200);
    textSize(30);
    text("2", 700, 210);
    delay(200);
  }
  if ((mouseX > 375)&&(mouseX < 425)&&(mouseY > 75)&&(mouseY < 125)&&(mousePressed)){
    oo++;

    fill(255, 255, 255);
    rect(790, 140, 43, 65);
    fill(0, 0, 0);
    textSize(75);
    text(oo, 790, 200);
    text("O", 830, 200);
    textSize(30);
    text("2", 880, 210);
    delay(200);
  }
  if ((mouseX > 445)&&(mouseX < 610)&&(mouseY > 75)&&(mouseY < 125)&&(mousePressed)){
    casio3++;

    fill(255, 255, 255);
    rect(1000, 140, 43, 65);
    fill(0, 0, 0);
    textSize(75);
    text(casio3, 1000, 200);
    text("CaSiO", 1040, 200);
    textSize(30);
    text("3", 1250, 210);
    delay(200);
  }
  if ((mouseX > 620)&&(mouseX < 720)&&(mouseY > 75)&&(mouseY < 125)&&(mousePressed)){
    cao++;

    fill(255, 255, 255);
    rect(100, 240, 43, 65);
    fill(0, 0, 0);
    textSize(75);
    text(cao, 100, 300);
    text("CaO", 140, 300);
    delay(200);
  }
  if ((mouseX > 750)&&(mouseX < 905)&&(mouseY > 75)&&(mouseY < 125)&&(mousePressed)){
    caco++;

    fill(255, 255, 255);
    rect(300, 240, 43, 65);
    fill(0, 0, 0);
    textSize(75);
    text(caco, 300, 300);
    text("CaCO", 340, 300);
    textSize(30);
    text("3", 535, 310);
    delay(200);
  }
  if ((mouseX > 925)&&(mouseX < 1050)&&(mouseY > 75)&&(mouseY < 125)&&(mousePressed)){
    fe2o3++;

    fill(255, 255, 255);
    rect(550, 240, 43, 65);
    fill(0, 0, 0);
    textSize(75);
    text(fe2o3, 550, 300);
    text("FeO", 590, 300);
    textSize(30);
    text("2     3", 660, 310);
    delay(200);
  }
  if ((mouseX > 1065)&&(mouseX < 1115)&&(mouseY > 75)&&(mouseY < 125)&&(mousePressed)){
    fe++;

    fill(255, 255, 255);
    rect(790, 240, 43, 65);
    fill(0, 0, 0);
    textSize(75);
    text(fe, 790, 300);
    text("Fe", 830, 300);
    delay(200);
  }
  if ((mouseX > 1150)&&(mouseX < 1250)&&(mouseY > 75)&&(mouseY < 125)&&(mousePressed)){
    sio2++;

    fill(255, 255, 255);
    rect(1000, 240, 43, 65);
    fill(0, 0, 0);
    textSize(75);
    text(sio2, 1000, 300);
    text("SiO", 1040, 300);
    textSize(30);
    text("2", 1150, 310);
    delay(200);
  }
}

void reaction(){
  if ((oo == 0)&&(c == 1)&&(co2 == 1)&&(co1 == 0)&&(casio3 == 0)&&(fe2o3 == 0)&&(caco == 0)&&(cao == 0)&&(fe == 0)&&(sio2 == 0)&&(cor == 0)&&(trial == 1)){
    cor++;
    trial = 0;
    c = 0;
    co2 = 0;
    background(255, 255, 255);
  }   
  if ((oo == 0)&&(c == 0)&&(co2 == 0)&&(co1 == 2)&&(casio3 == 0)&&(fe2o3 == 0)&&(caco == 0)&&(cao == 0)&&(fe == 0)&&(sio2 == 0)&&(cor == 1)&&(trial == 1)){
    cor++;
    trial = 0;
    co1 = 0;
    background(255, 255, 255);
  }

  if ((oo == 1)&&(c == 1)&&(co2 == 0)&&(co1 == 0)&&(casio3 == 0)&&(fe2o3 == 0)&&(caco == 0)&&(cao == 0)&&(fe == 0)&&(sio2 == 0)&&(cr == 0)&&(trial == 1)){
    cr++;
    trial = 0;
    oo = 0;
    c = 0;
    background(255, 255, 255);
  }  
  if ((oo == 0)&&(c == 0)&&(co2 == 1)&&(co1 == 0)&&(casio3 == 0)&&(fe2o3 == 0)&&(caco == 0)&&(cao == 0)&&(fe == 0)&&(sio2 == 0)&&(cr == 1)&&(trial == 1)){
    cr++;
    trial = 0;
    co2 = 0;
    background(255, 255, 255);
  }

  if ((oo == 0)&&(c == 0)&&(co2 == 0)&&(co1 == 3)&&(casio3 == 0)&&(fe2o3 == 1)&&(caco == 0)&&(cao == 0)&&(fe == 0)&&(sio2 == 0)&&(hematite == 0)&&(trial == 1)){
    hematite++;
    trial = 0;
    fe2o3 = 0;
    co1 = 0;
    background(255, 255, 255);
  }  
  if ((oo == 0)&&(c == 0)&&(co2 == 3)&&(co1 == 0)&&(casio3 == 0)&&(fe2o3 == 0)&&(caco == 0)&&(cao == 0)&&(fe == 2)&&(sio2 == 0)&&(hematite == 1)&&(trial == 1)){
    hematite++;
    trial = 0;
    fe = 0;
    co2 = 0;    
    background(255, 255, 255);
  }

  if ((oo == 0)&&(c == 0)&&(co2 == 0)&&(co1 == 0)&&(casio3 == 0)&&(fe2o3 == 0)&&(caco == 0)&&(cao == 1)&&(fe == 0)&&(sio2 == 1)&&(slag == 0)&&(trial == 1)){
    slag++;
    trial = 0;
    cao = 0;
    sio2 = 0;
    background(255, 255, 255);
  }  
  if ((oo == 0)&&(c == 0)&&(co2 == 0)&&(co1 == 0)&&(casio3 == 1)&&(fe2o3 == 0)&&(caco == 0)&&(cao == 0)&&(fe == 0)&&(sio2 == 0)&&(slag == 1)&&(trial == 1)){
    slag++;
    trial = 0;
    casio3 = 0;
    background(255, 255, 255);
  }

  if ((oo == 0)&&(c == 0)&&(co2 == 0)&&(co1 == 0)&&(casio3 == 0)&&(fe2o3 == 0)&&(caco == 1)&&(cao == 0)&&(fe == 0)&&(sio2 == 0)&&(caor == 0)&&(trial == 1)){
    caor++;
    trial = 0;
    caco = 0;
    background(255, 255, 255);
  }  
  if ((oo == 0)&&(c == 0)&&(co2 == 1)&&(co1 == 0)&&(casio3 == 0)&&(fe2o3 == 0)&&(caco == 0)&&(cao == 1)&&(fe == 0)&&(sio2 == 0)&&(caor == 1)&&(trial == 1)){
    caor++;
    trial = 0;
    cao = 0;
    co2 = 0;
    background(255, 255, 255);
  }

  if (trial == 2){
    delay(1000);
    background(255, 255, 255);
    trial = 0;
  }
  if (trial == 1){
    trial++;
    oo = 0;
    c = 0;
    co2 = 0;
    co1 = 0;
    casio3 = 0;
    fe2o3 = 0;
    caco = 0;
    cao = 0;
    fe = 0;
    sio2 = 0;

    image(wrong, width/2 - wrong.width/2, height/2 - wrong.width/2);
  }
}

void place(){
  if (cor >= 1){
    textSize(100);
    text("C  CO", 50, 500 - 10);
    textSize(40);
    text("2", 330, 500);
  }
  if (cor == 2){
    textSize(100);
    text("2CO", 430, 500 - 10);
  }

  if (cr >= 1){
    textSize(100);
    text("C  O", 50, 600 - 10);
    textSize(40);
    text("2", 260, 600);
  }
  if (cr == 2){
    textSize(100);
    text("CO", 400, 600 - 10);
    textSize(40);
    text("2", 550, 600);
  }

  if (caor >= 1){
    textSize(100);
    text("CaCO", 50, 900 - 10);
    textSize(40);
    text("3", 320, 900);
  }
  if (caor == 2){
    textSize(100);
    text("CaO", 450, 900 - 10);
    text("CO", 730, 900 - 10);
    textSize(40);
    text("2", 870, 900);
  }

  if (slag >= 1){
    textSize(100);
    text("CaO  SiO", 50, 700 - 10);
    textSize(40);
    text("2", 470, 700);
  }
  if (slag == 2){
    textSize(100);
    text("CaSiO", 560, 700 - 10);
    textSize(40);
    text("3", 850, 700);
  }

  if (hematite >= 1){
    textSize(100);
    text("FeO  3CO", 50, 800 - 10);
    textSize(40);
    text("2    3", 150, 800);
  }
  if (hematite == 2){
    textSize(100);
    text("2Fe  3CO", 600, 800 - 10);
    textSize(40);
    text("2", 1050, 800);
  }
}

void hint2(){
  image(hint, 800, 400);
  fill(0, 0, 0);
  textSize(20);
  
  if (hints == 0){
    text("If you need help just say.", 810 + hint.width, 450);
    text("I'm stuck.      No, thanks.", 810 + hint. width, 500);
  }
  
  if ((mouseX > 810 + hint.width)&&(mouseX < 910 + hint.width)&&(mouseY > 480)&&(mouseY < 500)&&(mousePressed)&&(hints < 1)){
    hints = 1;
    background(255, 255, 255);
  }
  if ((mouseX > 940 + hint.width)&&(mouseX < 1050 + hint.width)&&(mouseY > 480)&&(mouseY < 500)&&(mousePressed)&&(hints == 0)){
    hints = -1;
    background(255, 255, 255);
  }
  
  if (hints == -1){
    text("I'll be here waiting.", 810 + hint.width, 450);
    text("I need tips.", 810 + hint.width, 500);
  }
  if (hints == 1){
    text("Here are the basics of some reactions:", 810 + hint.width, 450);
    text("Hematite is displaced to become ore.", 810 + hint.width, 500);
    text("Coke must become carbon dioxide.", 810 + hint.width, 525);
    text("Two elements react to form slag.", 810 + hint.width, 550);
    text("Limestone is cracked by heat.", 810 + hint.width, 575);
  }
}

void finish2(){  
  if ((cor == 2)&&(cr == 2)&&(hematite == 2)&&(slag == 2)&&(caor == 2)){
    fill(0, 0, 255);
    rect(width/2 - 117.5, height/3 - 50, 235, 100);
    fill(0, 0, 0);
    textSize(100);
    text("Next", width/2 - 117.5, height/3 + 40);
    if (((mouseX > width/2 - 100)&&(mouseX < width/2 + 100))&&((mouseY > height/3 - 50)&&(mouseY < height/3 + 50))&&(mousePressed)){
      background(255, 255, 255);
      stage++;

      co2 = 0;
      co1 = 0;
      casio3 = 0;
      c = 0;
      fe2o3 = 0;
      oo = 0;
      caco = 0;
      cao = 0;
      fe = 0;
      
      hints = 0;
    }
  }
}

void start3(){
  fill(255, 0, 0);
  rect(0, 0, 1350, 50);
  fill(0, 0, 0);
  textSize(25);
  text("Finnaly, as you have the chemicals and reactions, place them in the correct place.", 5, 30);

  image(base, width/2 - base.width/2, height - base.height);

  fill(0, 255, 0);
  ellipse(100, 150, 170, 170);
  fill(0, 0, 0);
  textSize(75);
  text("New", 20, 175);
}

void show(){  
  if (placed == 2){
    background(255, 255, 255);
    delay(1000);
    placed = 0;
  }
  if ((mouseX > 15)&&(mouseX < 185)&&(mouseY > 65)&&(mouseY < 235)&&(mousePressed)&&(placed == 0)){
    fill(255, 0, 0);
    textSize(50);
    text("You need to place the current object!", 250, 150);
    placed = 2;
  }
  if ((mouseX > 15)&&(mouseX < 185)&&(mouseY > 65)&&(mouseY < 235)&&(mousePressed)&&(placed == 1)){
    place++;
    placed = 0;
    delay(200);

    x = 200;
    y = 350;
  }

  if ((place == 1)&&(p == 0)){
    p++;
    c = 1;
  }
  if ((place == 2)&&(p == 1)){
    p++;
    slag = 1;
  }
  if ((place == 3)&&(p == 2)){
    p++;
    co2 = 1;
  }
  if ((place == 4)&&(p == 3)){
    p++;
    casio3 = 1;
  }
  if ((place == 5)&&(p == 4)){
    p++;
    hematite = 1;
  }
  if ((place == 6)&&(p == 5)){
    p++;
    oo = 1;
  }
  if ((place == 7)&&(p == 6)){
    p++;
    fe2o3 = 1;
  }
  if ((place == 8)&&(p == 7)){
    p++;
    cr = 1;
  }
  if ((place == 9)&&(p == 8)){
    p++;
    fe = 1;
  }
  if ((place == 10)&&(p == 9)){
    p++;
    cor = 1;
  }
  if ((place == 11)&&(p == 10)){
    p++;
    caco = 1;
  }
  if ((place == 12)&&(p == 11)){
    p++;
    caor = 1;
  }
}

void exist(){
  if (c == 1){
    image(coke, x - coke.width/2, y - coke.height/2);
  }
  if (slag == 1){
    image(slagI, x - slagI.width/2, y - slagI.height/2);
  }
  if (co2 == 1){
    image(carbonI, x - carbonI.width/2, y - carbonI.height/2);
  }
  if (casio3 == 1){
    image(slagIm, x - slagIm.width/2, y - slagIm.height/2);
  }
  if (hematite == 1){
    image(hematiteI, x - hematiteI.width/2, y - hematiteI.height/2);
  }
  if (oo == 1){
    image(ot, x - ot.width/2, y - ot.height/2);
  }
  if (fe2o3 == 1){
    image(ore, x - ore.width/2, y - ore.height/2);
  }
  if (cr == 1){
    image(crI, x - crI.width/2, y - crI.height/2);
  }
  if (fe == 1){
    image(ref, x - ref.width/2, y - ref.height/2);
  }
  if (cor == 1){
    image(coI, x - coI.width/2, y - coI.height/2);
  }
  if (caco == 1){
    image(lime, x - lime.width/2, y - lime.height/2);
  }
  if (caor == 1){
    image(caorI, x - caorI.width/2, y - caorI.height/2);
  }
}

void drag(){
  if (place == 1){
    if ((mouseX > x - coke.width/2)&&(mouseX < x + coke.width/2)&&(mouseY > y - coke.height/2)&&(mouseY < y + coke.height/2)&&(mousePressed)){
      x = mouseX;
      y = mouseY;
      background(255, 255, 255);
    }
  }
  if (place == 2){
    if ((mouseX > x - slagI.width/2)&&(mouseX < x + slagI.width/2)&&(mouseY > y - slagI.height/2)&&(mouseY < y + slagI.height/2)&&(mousePressed)){
      x = mouseX;
      y = mouseY;
      background(255, 255, 255);
    }
  }
  if (place == 3){
    if ((mouseX > x - coo.width/2)&&(mouseX < x + coo.width/2)&&(mouseY > y - coo.height/2)&&(mouseY < y + coo.height/2)&&(mousePressed)){
      x = mouseX;
      y = mouseY;
      background(255, 255, 255);
    }
  }
  if (place == 4){
    if ((mouseX > x - slagIm.width/2)&&(mouseX < x + slagIm.width/2)&&(mouseY > y - slagIm.height/2)&&(mouseY < y + slagIm.height/2)&&(mousePressed)){
      x = mouseX;
      y = mouseY;
      background(255, 255, 255);
    }
  }
  if (place == 5){
    if ((mouseX > x - hematiteI.width/2)&&(mouseX < x + hematiteI.width/2)&&(mouseY > y - hematiteI.height/2)&&(mouseY < y + hematiteI.height/2)&&(mousePressed)){
      x = mouseX;
      y = mouseY;
      background(255, 255, 255);
    }
  }
  if (place == 6){
    if ((mouseX > x - ot.width/2)&&(mouseX < x + ot.width/2)&&(mouseY > y - ot.height/2)&&(mouseY < y + ot.height/2)&&(mousePressed)){
      x = mouseX;
      y = mouseY;
      background(255, 255, 255);
    }
  }
  if (place == 7){
    if ((mouseX > x - ore.width/2)&&(mouseX < x + ore.width/2)&&(mouseY > y - ore.height/2)&&(mouseY < y + ore.height/2)&&(mousePressed)){
      x = mouseX;
      y = mouseY;
      background(255, 255, 255);
    }
  }
  if (place == 8){
    if ((mouseX > x - crI.width/2)&&(mouseX < x + crI.width/2)&&(mouseY > y - crI.height/2)&&(mouseY < y + crI.height/2)&&(mousePressed)){
      x = mouseX;
      y = mouseY;
      background(255, 255, 255);
    }
  }
  if (place == 9){
    if ((mouseX > x - ref.width/2)&&(mouseX < x + ref.width/2)&&(mouseY > y - ref.height/2)&&(mouseY < y + ref.height/2)&&(mousePressed)){
      x = mouseX;
      y = mouseY;
      background(255, 255, 255);
    }
  }
  if (place == 10){
    if ((mouseX > x - coI.width/2)&&(mouseX < x + coI.width/2)&&(mouseY > y - coI.height/2)&&(mouseY < y + coI.height/2)&&(mousePressed)){
      x = mouseX;
      y = mouseY;
      background(255, 255, 255);
    }
  }
  if (place == 11){
    if ((mouseX > x - lime.width/2)&&(mouseX < x + lime.width/2)&&(mouseY > y - lime.height/2)&&(mouseY < y + lime.height/2)&&(mousePressed)){
      x = mouseX;
      y = mouseY;
      background(255, 255, 255);
    }
  }
  if (place == 12){
    if ((mouseX > x - caorI.width/2)&&(mouseX < x + caorI.width/2)&&(mouseY > y - caorI.height/2)&&(mouseY < y + caorI.height/2)&&(mousePressed)){
      x = mouseX;
      y = mouseY;
      background(255, 255, 255);
    }
  }
}

void placed(){
  if ((slag == 1)&&(place == 2)&&(x > 880)&&(x < 1280)&&(y > 510)&&(y < 640)&&(!(mousePressed))){
    placed = 1;
    slag = 0;
    background(255, 255, 255);
  }
  if ((place > 2)||((place == 2)&&(placed == 1))){
    image(slagI, 881, 511);
  }

  if ((casio3 == 1)&&(place == 4)&&(x > 940)&&(x < 1240)&&(y > 760)&&(y < 900)&&(!(mousePressed))){
    placed = 1;
    casio3 = 0;
    background(255, 255, 255);
  }
  if ((place > 4)||((place == 4)&&(placed == 1))){
    image(slagIm, 941, 761);
  }

  if ((hematite == 1)&&(place == 5)&&(x > 880)&&(x < 1180)&&(y > 410)&&(y < 510)&&(!(mousePressed))){
    placed = 1;
    hematite = 0;
    background(255, 255, 255);
  }
  if ((place > 5)||((place == 5)&&(placed == 1))){
    image(hematiteI, 881, 431);
  }

  if ((oo == 1)&&(place == 6)&&(x > 920)&&(x < 1220)&&(y > 640)&&(y < 760)&&(!(mousePressed))){
    placed = 1;
    oo = 0;
    background(255, 255, 255);
  }
  if ((place > 6)||((place == 6)&&(placed == 1))){
    image(ot, 921, 641);
  }
  
  if ((cr == 1)&&(place == 8)&&(x > 200)&&(x < 400)&&(y > 600)&&(y < 800)&&(!(mousePressed))){
    placed = 1;
    cr = 0;
    background(255, 255, 255);
  }
  if ((place > 8)||((place == 8)&&(placed == 1))){
    image(crI, 201, 601);
  }
  
  if ((fe == 1)&&(place == 9)&&(x > 200)&&(x < 400)&&(y > 800)&&(y < 900)&&(!(mousePressed))){
    placed = 1;
    fe = 0;
    background(255, 255, 255);
  }
  if ((place > 9)||((place == 9)&&(placed == 1))){
    image(ref, 201, 801);
  }
  
  if ((cor == 1)&&(place == 10)&&(x > 200)&&(x < 400)&&(y > 400)&&(y < 600)&&(!(mousePressed))){
    placed = 1;
    cor = 0;
    background(255, 255, 255);
  }
  if ((place > 10)||((place == 10)&&(placed == 1))){
    image(coI, 201, 451);
  }
  
  if ((caor == 1)&&(place == 12)&&(x > 880)&&(x < 1280)&&(y > 510)&&(y < 640)&&(!(mousePressed))){
    placed = 1;
    caor = 0;
    background(255, 255, 255);
  }
  if ((place > 12)||((place == 12)&&(placed == 1))){
    image(caorI, 881, 511 + slagI.height);
  }
}

void placedtop(){
  if ((c == 1)&&(place == 1)&&(x > width/2 - 150)&&(x < width/2 + 150)&&(y > 50)&&(y < 150)&&(!(mousePressed))){
    placed = 1;
    c = 0;
    background(255, 255, 255);
  }
  if ((place > 1)||((place == 1)&&(placed == 1))){
    image(coke, width/2 - 149, 51);
  }
  
  if ((co2 == 1)&&(place == 3)&&(x > 194)&&(x < 394)&&(y > 100)&&(y < 260)&&(!(mousePressed))){
    placed = 1;
    co2 = 0;
    background(255, 255, 255);
  }
  if ((place > 3)||((place == 3)&&(placed == 1))){
    image(carbonI, 195, 101);
  }
  
  if ((fe2o3 == 1)&&(place == 7)&&(x > width/2 - 150)&&(x < width/2 + 150)&&(y > 50)&&(y < 150)&&(!(mousePressed))){
    placed = 1;
    fe2o3 = 0;
    background(255, 255, 255);
  }
  if ((place > 7)||((place == 7)&&(placed == 1))){
    image(ore, width/2 - 149 + coke.width, 51);
  }
  
  if ((caco == 1)&&(place == 11)&&(x > width/2 - 150)&&(x < width/2 + 150)&&(y > 50)&&(y < 150)&&(!(mousePressed))){
    placed = 1;
    caco = 0;
    background(255, 255, 255);
  }
  if ((place > 11)||((place == 11)&&(placed == 1))){
    image(lime, width/2 - 149 + coke.width + ore.width, 51);
  }
}

void boxtop(){
  fill(255, 255, 255);
  rect(width/2 - 150, 50, 340, 100);
  rect(194, 100, 200, 160);
}

void box1(){
  fill(255, 255, 255);  
  rect(200, 450, 200, 150);
  rect(880, 410, 301, 100);
  rect(200, 600, 200, 200);
  rect(200, 800, 200, 100);
  rect(880, 510, 400, 130);
  rect(920, 640, 300, 120);
  rect(940, 760, 280, 140);
}

void hint3(){
  image(hint, 100 - hint.width/2, 450);
  fill(255, 255, 255);
  rect(0, 450 + hint.height, 200, 450 - hint.height);
  fill(0, 0, 0);
  textSize(20);
  
  if (hints == 0){
    textSize(28);
    text("I can help you.", 0, 480 + hint.height);
    
    textSize(20);
    text("Thank you a lot.", 10, 530 + hint.height);
    text("Not right now.", 15, 560 + hint.height);
  }
  
  if ((mouseX < 200)&&(mouseY > 510 + hint.height)&&(mouseY < 530 + hint.height)&&(mousePressed)&&(hints < 1)){
    hints = 1;
    background(255, 255, 255);
  }
  if ((mouseX < 200)&&(mouseY > 540 + hint.height)&&(mouseY < 560 + hint.height)&&(mousePressed)&&(hints == 0)){
    hints = -1;
    background(255, 255, 255);
  }
  
  if (hints == -1){
    textSize(30);
    text("Are you sure?", 0, 480 + hint.height);
    textSize(20);
    text("Placing is hard.", 0, 530 + hint.height);
  }
  if (hints == 1){    
    fill(0, 0, 0);
    text("The charge is placed", 0, 470 + hint.height);
    text("at the top.", 0, 490 + hint.height);
    
    text("Iron is denser than", 0, 515 + hint.height);
    text("slag.", 0, 535 + hint.height);
    
    text("Gases will rise and", 0, 560 + hint.height);
    text("react.", 0, 580 + hint.height);
    
    text("The reaction happen", 0, 605 + hint.height);
    text("at a specific", 0, 625 + hint.height);
    text("temperature.", 0, 645 + hint.height);
  }
}

void finish3(){
  if ((place == 12)&&(placed == 1)){
    fill(0, 0, 255);
    rect(1000, 100, 300, 100);
    fill(0, 0, 0);
    textSize(100);
    text("Finish", 1000, 190);
    if ((mouseX > 1000)&&(mouseX < 1300)&&(mouseY > 100)&&(mouseY < 200)&&(mousePressed)){
      background(255, 255, 255);
      stage++;
    }
  }
}

void last(){
  background(255, 255, 255);
  image(finall, 0, 0);
  fill(255, 255, 102);
  textSize(75);
  text("Your blast furnace works!", 200, 100);
  text("Congratulations!", width/2 - 300, 175);
}

void pyro(){
  print("hi");
}

void draw(){
  if (stage == 0){
    begin();
  }
  if (stage == 1){
    pile();
    create();
    molecule();
    form();
    hint1();
    finish();
  }
  if (stage == 2){
    start2();
    put();
    place();
    reaction();
    hint2();
    finish2();
  }
  if (stage == 3){
    drag();
    boxtop();
    placedtop();
    show();
    start3();
    box1();
    placed();
    exist();
    hint3();
    finish3();
  }
  if (stage == 4){
    last();
  }

  image(pyro, width - pyro.width, 0);
  if ((mouseX > width - pyro.width)&&(mouseY < pyro.height)&&(mousePressed)){
    stage = 100;
  }
  if ((stage == 100)||(stage == 101)){
    image(pyroland, width/2 - pyroland.width/2, 0);
    stage++;
  }
  if (stage == 102){
    delay(2000);
    stage++;
    background(255, 255, 255);
  }
  if (stage == 103){
  
  }
}

void keyPressed(){
  if (key == 'e'){
    trial = 1;
    delay(100);
  }
  if (key == 'r'){
    if (stage == 1){
      oc = 0;
      cc = 0;
      cac = 0;
      fec = 0;
      sic = 0;
    }
    if (stage == 2){
      co2 = 0;
      co1 = 0;
      casio3 = 0;
      c = 0;
      fe2o3 = 0;
      oo = 0;
      caco = 0;
      cao = 0;
      fe = 0;
      sio2 = 0;
    }
    if (stage == 3){
      x = 200;
      y = 300;
    }
    background(255, 255, 255);
  }
  if (key == 'm'){
    background(255, 255, 255);
    stage++;
  }
  if (key == 'n'){
    background(255, 255, 255);
    stage--;
  }

  if (key == 'b'){
    place++;
    placed = 0;
    background(255, 255, 255);

    x = 200;
    y = 350;

    c = 0;
    slag = 0;
    co2 = 0;
    casio3 = 0;
    hematite = 0;
    oo = 0;
    fe2o3 = 0;
    cr = 0;
    fe = 0;
    cor = 0;
    caco = 0;
    
    if (caor == 1){
      placed = 1;
      place--;
    }
    
    caor = 0;
  }
}