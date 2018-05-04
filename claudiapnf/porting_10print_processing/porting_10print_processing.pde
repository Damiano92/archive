//PORTING 10 PRINT TO PROCESSING
//by @claudiapnf© 2018 MIT License
//DSII2018 Lab @UNIRSM website

void setup() {
    size(640,384);
    background(64, 64, 224);
}

int length = 20;
int x = 0;
int x1 = length;
int x2 = 0;
int y = 0;
int y1 = length;
int y2 = 0;

void draw() {
    frameRate(30);
    int strokeW = length/3;
    stroke(160, 160, 255);
    strokeWeight(strokeW);
    //miter = vertici a punta
    strokeJoin(MITER);
    //round = traccia round
    strokeCap(ROUND);
    if (y <= height) {
        if (x>width) {x=0; x1=length; x2=0; y+=length;}
        if (Math.random() > 0.5) {
            line(x1+x, y1+y, x2 + x, y2+y);
        } else {
            line(x1+x, y2+y, x2 + x, y1+y);
        }
          x+=length;
    };
}