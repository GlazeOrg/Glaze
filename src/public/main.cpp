#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>
#include <iostream>
#include "main.h"

using namespace cv;
using namespace std;

int main()
{
  string imgPath = IMG_PATH;
  string path = imgPath + "glaze-logo_400¡Á400.png";
  Mat img = imread(path);
  imshow("image", img);
  waitKey(0);
  return 0;
}