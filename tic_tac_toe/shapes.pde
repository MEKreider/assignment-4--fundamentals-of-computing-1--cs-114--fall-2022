//Tic Tac Toe Board
public void DrawBoard() {
line(0, 166, 500, 166);
line(0, 332, 500, 332);
line(166, 0, 166, 500);
line(332, 0, 332, 500);
}

//Draws an X
void drawX(int x, int y) {

//Top Left (Position 0)
if (x==0 && y==0){
    line (0, 0, 166, 166);
    line (166, 0, 0, 166);
}

//Top Middle (Position 1)
if (x==1 && y==0){
    line (166, 0, 332, 166);
    line (332, 0, 166, 166);
}

//Top Right (Position 2)
if (x==2 && y==0){
    line (332, 0, 500, 166);
    line (332, 166, 500, 0);
}

//Middle Left (Position 3)
if (x==0 && y==1){
    line (0, 166, 166, 332);
    line (0, 332, 166, 166);
}

//Middle (Position 4)
if (x==1 && y==1){
    line (166, 166, 332, 332);
    line (166, 332, 332, 166);
}

//Middle Right (Position 5)
if (x==2 && y==1){
    line (332, 166, 500, 332);
    line (332, 332, 500, 166);
}

//Bottom Left (Position 6)
if (x==0 && y==2){
    line (0, 500, 166, 332);
    line (0, 332, 166, 500);
}

//Bottom Middle (Position 7)
if (x==1 && y==2){
    line (166, 332, 332, 500);
    line (166, 500, 332, 332);
}

//Middle Right (Position 8)
if (x==2 && y==2){
    line (332, 332, 500, 500);
    line (332, 500, 500, 332);
}
}

//Draws an 0
void draw0(int x, int y) {

    //Top Left (Position 0)
    if (x==0 && y==0) {
        circle(83,83,166);
    }

    //Top Middle (Position 1)
    if (x==1 && y==0) {
        circle(249,83,166);
    }

    //Top Right (Position 2)
    if (x==2 && y==0) {
        circle(415,83,166);
    }

    //Middle Left (Position 3)
    if (x==0 && y==1) {
        circle(83,249,166);
    }

    //Middle (Position 4)
    if (x==1 && y==1) {
        circle(249,249,166);
    }

    //Middle Right (Position 5)
    if (x==2 && y==1) {
        circle(415,249,166);
    }

    //Bottom Left (Position 6)
    if (x==0 && y==2) {
        circle(83,415,166);
    }

    //Bottom Middle (Position 7)
    if (x==1 && y==2) {
        circle(249,415,166);
    }

    //Bottom Right (Position 8)
    if (x==2 && y==2) {
        circle(415,415,166);
    }
}




