PImage pic;
int unit =1;

float x1;
float x2;
float y1;
float y2; //坐标

float rgb; //随机颜色
int f = 150; //图块范围调整

size(680, 510); //设置画布大小

pic = loadImage("rabbit.png"); //加载图片
pic.resize(width, height);

image(pic, 0, 0, width, height); //显示图片

for (int b = 0;  b< 100; b++) {
    x1 = random(-f, width);
    x2 = random(0, width + f);
    y1 = random(-f, height);
    y2 = random(0, height + f);
    rgb = random(0, 255);
    if (x1 < x2 || y1 < y2) {
        for (int i = int(x1);  i< int(x2); ++i) {
            for (int j = int(y1);  j< int(y2); j++) {
                noStroke();
                color c = (pic.get(i, j));
                fill(rgb, green(c), blue(c));
                rect(i, j, unit, unit);
            }
        }
    }
    x1 = random(0, width);
    x2 = random(0, width);
    y1 = random(0, height);
    y2 = random(0, height);
    rgb = random(0, 255);
    if (x1 < x2 || y1 < y2) {
        for (int i = int(x1);  i< int(x2); ++i) {
            for (int j = int(y1);  j< int(y2); j++) {
                noStroke();
                color c = (pic.get(i, j));
                fill(red(c), rgb, blue(c));
                rect(i, j, unit, unit);
            }
        }
    }
    x1 = random(0, width);
    x2 = random(0, width);
    y1 = random(0, height);
    y2 = random(0, height);
    rgb = random(0, 255);
    if (x1 < x2 || y1 < y2) {
        for (int i = int(x1);  i< int(x2); ++i) {
            for (int j = int(y1);  j< int(y2); j++) {
                noStroke();
                color c = (pic.get(i, j));
                fill(red(c), green(c), rgb);
                rect(i, j, unit, unit);
            }
        }
    }
} //产生错误图块

saveFrame("emo.png");