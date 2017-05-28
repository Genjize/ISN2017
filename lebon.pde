// On déclare les images suivantes
PImage koala,Save ,exit ;
// Position de l'image
int q = 5; // x 
int h = 50; // y
// les value servent à la couleur du paint et cool sert pour l'activation de paint
int cool, value1, value2, value3;
// pour paint
int l=10;
int L=10;
// nous servira pour tous les filtres position + longeur ou largeur !
float imgwidth = 705 ;
float imgheight = 660 ;

void setup() {
  // On charge les images
  koala = loadImage("image.jpg");
  Save = loadImage("save.png");
  exit = loadImage("exit.png");
  // Résolution de l'image totale 
  size (710, 710);
  // coutours en blanc
  stroke(255);
  // charge image choisi par l'utilisateur qu'on appelle koala.
  image(koala, q, h);
}


void draw() {
  // on appelle fonction pour les differents types de curseurs.
  curseur();
  // Fill permet le remplissement d'une forme, donc ici c'est en noir qu'on veut les rectangles
  fill(0);
  rect(5, 5, 700, 45);
  rect(5, 580, 500, 125);
  fill(255);
  rect(505,615,200,90);
  fill(0);
  rect(505,580,200,35);
  fill(255);
  
  //création du cadre
  line (5, 5, 5, 705);
  line (5, 5, 705, 5);
  line (5, 705, 705, 705);
  line (705, 5, 705, 705);

  //bouton fermer
  line(5, 20, 705, 20);

  //initialisation de la forme d'écriture
  textSize(11.5);
  fill(255);

  //création ligne boutons
  line (5, 50, 705, 50);
  //bouton assombrir
  text ("Assombrir", 10, 40);
  line (70, 20, 70, 50);
  //bouton stop paint
  text ("Stop paint", 77, 40);
  line (140, 20, 140, 50);
  //bouton pinceau
  text ("Paint", 155, 40);
  line (195, 20, 195, 50);
  //bouton contraste
  text ("Contraste", 200, 40);
  line (260, 20, 260, 50);
  //bouton filtre
  text ("Filtre", 265, 40);
  line (300, 20, 300, 50);
  //bouton éclaircir
  text ("Eclaircir", 313, 40);
  line (370, 20, 370, 50);
  //bouton noir et blanc
  text ("Noir et blanc", 375, 40);
  line (450, 20, 450, 50);
    //ligne entre les 2 icones
  line (675,20,675,50); 
    line (645,20,645,50); 
  // savoir ou cliquer !  rect(450,20,109,30);
  textSize(14);
  text("Taille Pinceau", 10, 595);  
  text("Couleur Pinceau", 130, 615);
  text("Filtres", 312, 599);
  String s = "format: jpg max: 700x540 et renommez le 'image'" ;
  textSize(16);
  text("Charger image", 550, 602);
  textSize(14);
  fill(0);
  text(s, 560, 615, 100, 120);
  fill(255);
  
  // PANEL TAILLE
  fill(value1, value2, value3);
  ellipse(55, 620, 10, 10);
  ellipse(55, 650, 15, 15);
  ellipse(55, 680, 20, 20);
  noFill();

  // PANEL COULEUR
  fill(255, 0, 0);  //R
  rect(120, 625, 33, 25);
  fill(0, 255, 0); //V
  rect(153, 625, 33, 25);
  fill(0, 0, 255); //B
  rect(186, 625, 33, 25);
  fill(255); //Blanc
  rect(219, 625, 33, 25);

  fill(255, 255, 0); //Jaune
  rect(120, 650, 33, 25);
  fill(255, 0, 255); // Magenta
  rect(153, 650, 33, 25);
  fill(0, 255, 255); // Cyan
  rect(186, 650, 33, 25);
  fill(0); // Noir
  rect(219, 650, 33, 25);

  // PANEL FILTRES RVB, JMC
  fill(255, 0, 0);  //R
  rect(300, 610, 33, 25);
  fill(0, 255, 0); //V
  rect(300, 635, 33, 25);
  fill(0, 0, 255); //B
  rect(300, 660, 33, 25);

  fill(255, 255, 0); //Jaune
  rect(333, 610, 33, 25);
  fill(255, 0, 255); // Magenta
  rect(333, 635, 33, 25);
  fill(0, 255, 255); // Cyan
  rect(333, 660, 33, 25); 
  
  image(Save,652,28);
  image(exit,680,28);
  /* 
   // pour voir la zone de clique pour la taille des pinceaux.
   rect(50, 615, 10, 10);
   rect(47, 642, 15, 15);
   rect(45, 670, 20, 20); 
   */
//  rect(640,28,15,15); VOIR OU EST LA ZONE CLIQUE POUR SAVE


  //si clique sur bouton assombrir
  if (mouseX >= 5 && mouseX <= 70 && mouseY >= 20 && mouseY <= 50 && mousePressed == true) { //Click bouton assombrir
    assombrir();//renvoie a la void assombrir
    delay (100);
  }
  //si clique sur bouton stop pinceau
  if (mouseX >= 70 && mouseX <= 140 && mouseY >= 20 && mouseY <=50 && mousePressed == true) {
    cool = 0;
  }
  //si clique sur bouton pinceau
  if (mouseX >= 140 && mouseX <= 195 && mouseY >= 20 && mouseY <=50 && mousePressed == true) {
    pinceau();//renvoie a la void pinceau
  }
  //si clique sur bouton contraste
  if (mouseX >= 195 && mouseX <= 260 && mouseY >= 20 && mouseY <=50 && mousePressed == true) {
    contraste();//renvoie a la void contraste
  }
  //si clique sur bouton luminosité
  if (mouseX >= 300 && mouseX <= 370 && mouseY >= 20 && mouseY <=50 && mousePressed == true) {
    luminosite();//renvoie a la void luminosite
  }
  //si clique sur bouton noir et blanc
  if (mouseX >= 370 && mouseX <= 450 && mouseY >= 20 && mouseY <=50 && mousePressed == true) {
    noiretblanc();//renvoie a la void noiretblanc
  }
  //si clique sur bouton filtre
  if (mouseX >= 260 && mouseX <= 300 && mouseY >= 20 && mouseY <=50 && mousePressed == true) {
    filtre();//renvoie a la void filtre
  }
  // si clique sur l'icone exit
  if (mouseX >= 675 && mouseX <= 705 && mouseY >= 20 && mouseY <= 50 && mousePressed == true){
    exit();
  }
  //si clique sur bouton sauvegarder
  if(mouseX>642 && mouseX <675 && mouseY>20 && mouseY <50 && mousePressed){
    float y = koala.height+50;
    float p = 590-koala.height;
    float x2 = 5 + koala.width;
    float o2 = 705 - koala.width;
    stroke(0);
    fill(0);
    rect(0,0,width,55); // RECTANGLE NOIR EN HAUT
    rect(0,0,5,height); // gauche trait
    rect(0,580,710,130); // RECTANGLE NOIR EN BAS
    rect(705,0,5,height); // DROITE trait
    rect(5,y,700,p); // Rectangle en dessous de l'image
    rect(x2,50,o2,koala.height);
   save("Monoeuvre.png");
   fill(255);
   delay(5000);
   exit();
  }
    // variable qu'on a défini avant, elle prend la valeur 1 donc fait la fonction paint et change le curseur
  if (cool == 1) {
     cursor(CROSS);
    paint();
  }
}
void assombrir () { 
  // charge tous les pixels présents
  loadPixels();
  // pour les pixels en y commencant par h(position y de l'image) jusqu'à q(position x)+longeur de l'image
  for (int y = h; y < imgheight; y++) { 
    for (int x = q; x < imgwidth; x++) {
      // Une image est un tableau à deux dimensions de points lumineux et là on prend juste la 1ere dimension
      int loc = x + y*width;
      // Obtenir les valeurs RVB dans l'image
      float r = red   (pixels[loc]);
      float g = green (pixels[loc]);
      float b = blue  (pixels[loc]);
      float rouge = 0;
      float bleu = 0;
      float vert = 0;
      if (r >= 127) {
        rouge = r-4 ;
      } else {
        rouge = r-4 ;
      }   
      if (b >= 127) {
        bleu = b-4 ;
      } else {
        bleu = b-4 ;
      }

      if (g >= 127) {
        vert = g-4 ;
      } else {
        vert = g-4 ;
      }
// pour les pixels présents dans cette séléction on change les valeurs RVB...
      pixels[loc] = color(rouge, vert, bleu);
    }
  }
  // permet de faire la modification, sans cette fonction, rien ne se passe.
  updatePixels();
}

void pinceau() {
  cool = 1;
}
void contraste() {
  loadPixels();
  for (int y = h; y < imgheight; y++) {
    for (int x = q; x < imgwidth; x++) {
      // Une image est un tableau à deux dimensions de points lumineux et là on prend juste la 1ere dimension
      int loc = x + y*width;
      // Obtenir les valeurs de RVB dans l'image
      float r = red   (pixels[loc]);
      float g = green (pixels[loc]);
      float b = blue  (pixels[loc]);
      float rouge = 0;
      float bleu = 0;
      float vert = 0;
      if (r >= 127) {
        rouge = r+4 ;
      } else {
        rouge = r-4 ;
      }   
      if (b >= 127) {
        bleu = b+4 ;
      } else {
        bleu = b-4 ;
      }

      if (g >= 127) {
        vert = g+4 ;
      } else {
        vert = g-4 ;
      }

      pixels[loc] = color(rouge, vert, bleu);
    }
  }
  updatePixels();
}

void filtre() {
  loadPixels();
  for (int y = h; y < imgheight; y++) {
    for (int x = q; x < imgwidth; x++) {
      // Une image est un tableau à deux dimensions de points lumineux et là on prend juste la 1ere dimension
      int loc = x + y*width;
      // Obtenir les valeurs de RVB dans l'image
      float r = red   (pixels[loc]);
      float g = green (pixels[loc]);
      float b = blue  (pixels[loc]);
      float rouge = 0;
      float bleu = 0;
      float vert = 0;
      if (r >=200) {
        rouge = r+10 ;
        if (rouge >=255) {
          rouge = 255 ;
        }
      }   
      if (b >=200) {
        bleu = b+10 ;
        if (bleu >=255) {
          bleu = 255 ;
        }
      }
      if (g >=200) {
        vert = g+10 ;
        if (vert >=255) {
          vert = 255 ;
        }
      }    
      pixels[loc] = color(rouge, vert, bleu);
    }
  }
  updatePixels();
}
void luminosite() {
  /*  loadPixels();
   for (int y = q; y < imgheight; y++) {
   for (int x = h; x < imgwidth; x++) {
   int loc = x + y*width;
   // Obtenir les valeurs de RVB dans l'image
   float r = red   (pixels[loc]);
   float g = green (pixels[loc]);
   float b = blue  (pixels[loc]);
   
   r *= 2;
   g *= 2;
   b *= 2;
   
   // Limite pour ne pas dépasser une valeur maximale(255) et minimale (0).
   r = constrain(r, 0, 255);
   g = constrain(g, 0, 255);
   b = constrain(b, 0, 255);
   // Crée une nouvelle couleur et défini les pixels dans la fenêtre
   pixels[loc] = color(r, g, b);
   }
   }
   updatePixels();
   }
   */
  loadPixels();
  for (int y = h; y < imgheight; y++) {
    for (int x = q; x < imgwidth; x++) {
      // Une image est un tableau à deux dimensions de points lumineux et là on prend juste la 1ere dimension
      int loc = x + y*width;
      // Obtenir les valeurs de RVB dans l'image
      float r = red   (pixels[loc]);
      float g = green (pixels[loc]);
      float b = blue  (pixels[loc]);
      float rouge = 0;
      float bleu = 0;
      float vert = 0;
      if (r >= 127) {
        rouge = r+4 ;
      } else {
        rouge = r+4 ;
      }   
      if (b >= 127) {
        bleu = b+4 ;
      } else {
        bleu = b+4 ;
      }

      if (g >= 127) {
        vert = g+4 ;
      } else {
        vert = g+4 ;
      }

      pixels[loc] = color(rouge, vert, bleu);
    }
  }
  updatePixels();
}
void noiretblanc () {
  loadPixels();
  float threshold = 127;
  for (int y = h; y < imgheight; y++) {
    for (int x = q; x < imgwidth; x++) {
      int loc = x + y*width;
      // Si les pixels ont une couleur vive ils deviennent blancs (>127) et inversement, les pixels étant sombre deviennent noirs (<127)
      if (brightness(pixels[loc]) > threshold) {
        pixels[loc]  = color(255);  // White
      } else {
        pixels[loc]  = color(0);    // Black
      }
    }
  }
  updatePixels();
}
void paint() {
  if (mousePressed) {
    noStroke();
    fill(value1, value2, value3);
    ellipse(mouseX, mouseY, l, L);
    stroke(255);
  }
}
void mousePressed() {
  if (mousePressed) { 
    // PANEL COULEUR
    if (mouseX>120 && mouseX <120+33 && mouseY>625 && mouseY <625+25) {   //R
      value1 = 255;
      value2 = 0;
      value3 = 0;
    }
    if (mouseX>153 && mouseX <153+33 && mouseY>625 && mouseY <625+25) {  //V
      value1 = 0;
      value2 = 255;
      value3 = 0;
    }
    if (mouseX>186 && mouseX <186+33 && mouseY>625 && mouseY <625+25) { //B
      value1 = 0;
      value2 = 0;
      value3 = 255;
    }
    if (mouseX>219 && mouseX <219+33 && mouseY>625 && mouseY <625+25) {//Blanc
      value1 = 255;
      value2 = 255;
      value3 = 255;
    }
    if (mouseX>120 && mouseX <120+33 && mouseY>650 && mouseY <650+25) { //Jaune
      value1 = 255;
      value2 = 255;
      value3 = 0;
    }
    if (mouseX>153 && mouseX <153+33 && mouseY>650 && mouseY <650+25) { //Magenta
      value1 = 255;
      value2 = 0;
      value3 = 255;
    }
    if (mouseX>186 && mouseX <186+33 && mouseY>650 && mouseY <650+25) { //Cyan
      value1 = 0;
      value2 = 255;
      value3 = 255;
    }
    if (mouseX>219 && mouseX <219+33 && mouseY>650 && mouseY <650+25) { //Noir
      value1 = 0;
      value2 = 0;
      value3 = 0;
    }
    // TAILLE PINCEAU
    if (mouseX>50 && mouseX <50+10 && mouseY>615 && mouseY <615+10) { //Petit
      l = 10;
      L = 10;
    }
    if (mouseX>47 && mouseX <47+15 && mouseY>642 && mouseY <642+15) { //Moyen
      l = 15;
      L = 15;
    }
    if (mouseX>45 && mouseX <45+20 && mouseY>670 && mouseY <670+20) { //Gros
      l = 20;
      L = 20;
    } 
    // FILTRES
    if (mouseX>300 && mouseX <300+33 && mouseY>610 && mouseY <610+25) {   //R
      loadPixels();
      for (int y = h; y < imgheight; y++) {
        for (int x = q; x < imgwidth; x++) {
          // Une image est un tableau à deux dimensions de points lumineux et là on prend juste la 1ere dimension
          int loc = x + y*width;
          // Obtenir les valeurs de RVB dans l'image
          float r = red   (pixels[loc]);
          float g = green (pixels[loc]);
          float b = blue  (pixels[loc]);
          float rouge = 0;
          float bleu = 0;
          float vert = 0;
          if (r >=0) {
            rouge = r+4 ;
          } else {
            rouge = 255 ;
          }   
          if (b <= 255) {
            bleu = b-4 ;
          } 

          if (g <= 255) {
            vert = g-4 ;
          } 
          pixels[loc] = color(rouge, vert, bleu);
        }
      }
      updatePixels();
    }
    if (mouseX>300 && mouseX <300+33 && mouseY>635 && mouseY <635+25) {  //V
      
  loadPixels();
       for (int y = h; y < imgheight; y++) {
       for (int x = q; x < imgwidth; x++) {
       // Une image est un tableau à deux dimensions de points lumineux et là on prend juste la 1ere dimension
       int loc = x + y*width;
       // Obtenir les valeurs de RVB dans l'image
       float r = red   (pixels[loc]);
       float g = green (pixels[loc]);
       float b = blue  (pixels[loc]);
       float rouge = 0;
       float bleu = 0;
       float vert = 0;
       if (r <= 255) {
       rouge = r-4 ;
       } 
       if (b <= 255) {
       bleu = b-4 ;
       } 
       
       if (g >+ 0) {
       vert = g+4 ;
       } 
       pixels[loc] = color(rouge, vert, bleu);
       }
       }
       updatePixels(); 
    }
    if (mouseX>300 && mouseX <366+33 && mouseY>660 && mouseY <660+25) { //B
      loadPixels();
       for (int y = h; y < imgheight; y++) {
       for (int x = q; x < imgwidth; x++) {
       // Une image est un tableau à deux dimensions de points lumineux et là on prend juste la 1ere dimension
       int loc = x + y*width;
       // Obtenir les valeurs de RVB dans l'image
       float r = red   (pixels[loc]);
       float g = green (pixels[loc]);
       float b = blue  (pixels[loc]);
       float rouge = 0;
       float bleu = 0;
       float vert = 0;
       if (r <= 255) {
       rouge = r-4 ;
       }
       if (b>= 0) {
       bleu = b+4 ;
       } 
       
       if (g <= 255) {
       vert = g-4 ;
       } 
       pixels[loc] = color(rouge, vert, bleu);
       }
       }
       updatePixels(); 
    }
    if (mouseX>333 && mouseX <333+33 && mouseY>610 && mouseY <610+25) { //Jaune
      loadPixels();
      for (int y = h; y < imgheight; y++) {
        for (int x = q; x < imgwidth; x++) {
          // Une image est un tableau à deux dimensions de points lumineux et là on prend juste la 1ere dimension
          int loc = x + y*width;
          // Obtenir les valeurs de RVB dans l'image
          float r = red   (pixels[loc]);
          float g = green (pixels[loc]);
          float b = blue  (pixels[loc]);
          float rouge = 0;
          float bleu = 0;
          float vert = 0;
          if (r >=0) {
            rouge = r+4 ;
          } else {
            rouge = 255 ;
          }   
          if (b <= 255) {
            bleu = b-4 ;
          } 

          if (g >= 0) {
            vert = g+4 ;
          } 
          pixels[loc] = color(rouge, vert, bleu);
        }
      }
      updatePixels();
    }
    if (mouseX>333 && mouseX <333+33 && mouseY>635 && mouseY <635+25) { //Magenta
      loadPixels();
      for (int y = h; y < imgheight; y++) {
        for (int x = q; x < imgwidth; x++) {
          // Une image est un tableau à deux dimensions de points lumineux et là on prend juste la 1ere dimension
          int loc = x + y*width;
          // Obtenir les valeurs de RVB dans l'image
          float r = red   (pixels[loc]);
          float g = green (pixels[loc]);
          float b = blue  (pixels[loc]);
          float rouge = 0;
          float bleu = 0;
          float vert = 0;
          if (r >= 0) {
            rouge = r+4 ;
          }   
          if (b >= 0) {
            bleu = b+4 ;
          } 

          if (g <= 255) {
            vert = g-4 ;
          } 
          pixels[loc] = color(rouge, vert, bleu);
        }
      }
      updatePixels();
    }
    if (mouseX>333 && mouseX <333+33 && mouseY>660 && mouseY <666+25) { //Cyan
      loadPixels();
      for (int y = h; y < imgheight; y++) {
        for (int x = q; x < imgwidth; x++) {
          // Une image est un tableau à deux dimensions de points lumineux et là on prend juste la 1ere dimension
          int loc = x + y*width;
          // Obtenir les valeurs de RVB dans l'image
          float r = red   (pixels[loc]);
          float g = green (pixels[loc]);
          float b = blue  (pixels[loc]);
          float rouge = 0;
          float bleu = 0;
          float vert = 0;
          if (r <= 255) {
            rouge = r-4 ;
          } 
          if (b >= 0) {
            bleu = b+4 ;
          } 

          if (g >= 0) {
            vert = g+4 ;
          } 
          pixels[loc] = color(rouge, vert, bleu);
        }
      }
      updatePixels();
    }
  }
}

 void curseur(){
 if (mouseX >= 5 && mouseX <= 450 && mouseY >= 20 && mouseY <= 50){
 cursor(HAND);
 }else if (mouseX >= 645 && mouseX <= 705 && mouseY >= 20 && mouseY <= 50){
 cursor(HAND);
 }else{
 cursor(ARROW);
 }
 }