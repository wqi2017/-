#include<iostream>
#include<cstdlib>
#include<windows.h>
#include<opencv2/opencv.hpp>
using namespace std;
using namespace cv;

bool cmp(Point a, Point b)
{
	return a.y < b.y;
}
int main()
{
	cout << CV_VERSION;
	int n = 1000;
	while (n--!=0){
		system("adb shell screencap -p /sdcard/screen.png ");
		system("adb pull /sdcard/screen.png");
		Mat image = imread("screen.png");
		Mat frame;
		Mat rgb[3];
		split(image, rgb);
		cvtColor(image, frame, COLOR_RGB2GRAY);
		
		threshold(rgb[2], frame, 128, 255, THRESH_BINARY);

		vector<vector<cv::Point>> contour;
		

		findContours(frame, contour, cv::RETR_EXTERNAL, cv::CHAIN_APPROX_NONE);

		vector<Point>center;
		vector<float>radius;
		for (int i = 0; i < (int)contour.size(); i++)
		{
			Point2f c; float r;
			{
				minEnclosingCircle(contour[i], c, r);
				if (r < 20 || r>100 || c.y < 300)continue;
				Point c1; c1.x = (int)c.x;
				c1.y = (int)c.y;

				center.push_back(c1);

				radius.push_back(r);
				circle(image, c, r, Scalar(0, 0, 255), 1);
			}
		}
		sort(center.begin(), center.end(), cmp);
		string sx = to_string(center[0].x);
		string sy = to_string(center[0].y);
		string scommand = "adb shell input tap " + sx + " " + sy;

		const char *command = scommand.c_str();

		system(command);
		cout << command << endl;
		system(command);
		Sleep(10000);
	}
	getchar();
}