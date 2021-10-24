PImage pic1;
PImage pic2;
PImage pic3;
PImage pic4;

int max1 = 7; //生成多少个 !
int max2 = 4; //生成多少个 X
int max3 = 2; //生成多少个 Fx

float x;
float y;

size(680, 510); //图片大小

pic1 = loadImage("rabbit.png"); //加载底图
pic2 = loadImage("!.png"); //加载图标 ！
pic3 = loadImage("X.png"); //加载图标 X
pic4 = loadImage("Fx.png"); //加载图标 
image(pic1, 0, 0, width, height); //显示图片

for (int a = 0; a < 5; ++a) {
    for (int i = 0; i < max1; ++i) {
        x = random(0, width);
        y = random(0, height);
        image(pic2, x, y);
    } //生成 X

    for (int i = 0; i < max2; ++i) {
        x = random(0, width);
        y = random(0, height);
        image(pic3, x, y);
    } //生成 ！

    for (int i = 0; i < max3; ++i) {
        x = random(0, width);
        y = random(0, height);
        image(pic4, x, y);
    } //生成 Fx
}

saveFrame("emo.png");