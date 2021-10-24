PImage pic;
int unit =1;

size(680, 510); //设置画布大小

pic = loadImage("rabbit.png"); //加载图片
pic.resize(width, height);

image(pic, 0, 0, width, height); //显示图片

for (int i = 0;  i< width; ++i) {
    for (int j = 0;  j< height; j = j+3) {
        noStroke();
        color c = (pic.get(i, j));
        fill(int(random(0, 255)), green(c), blue(c));
        rect(i, j, unit, unit);
        fill(red(c), green(c), int(random(0, 255)));
        rect(i + 1, j + 1, unit, unit);
        fill(red(c), int(random(0, 255)), blue(c));
        rect(i + 2, j + 2, unit, unit);
    }
}

saveFrame("emo.png");