PImage pic;
PImage pic2;
int em = 7; //画线相隔间距
int lw = 5; //线宽
int ap = 50; //透明度
int bemo = 30; //错位图块个数
int x = 200;


size(680, 510); // 设置画布尺寸

pic = loadImage("rabbit.png"); //加载图片
pic.resize(width, height);

image(pic, 0, 0, width, height); //显示图片

//rgb分离



//添加条纹
for (int i = 0; i < height; i+=em) {
    stroke(0, 0, 0 , ap);
    strokeWeight(lw);
    line(0, i, width, i);
}

saveFrame("bemo.png"); //保存图像