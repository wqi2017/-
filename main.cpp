#include<iostream>
#include<cstdlib>
#include<cmath>
#include<unistd.h>
#include<opencv2/opencv.hpp>
using namespace std;
using namespace cv;

bool cmp(Point a, Point b)
{
	return a.y < b.y;
}
int main()
{
	cout <<"opencv_version\t"<< CV_VERSION<<endl;
    Point last_aim(0,0);
	while (true){
		system("adb shell screencap -p /sdcard/screen.png ");
		system("adb pull /sdcard/screen.png");
		Mat image = imread("screen.png");
        if(image.empty()==true)continue;
		Mat frame;
		Mat rgb[3];
		split(image, rgb);

		cvtColor(image, frame, COLOR_RGB2GRAY);

		threshold(rgb[2], frame, 80, 255, THRESH_BINARY);


		vector<vector<cv::Point> > contour;
		findContours(frame, contour, cv::RETR_EXTERNAL, cv::CHAIN_APPROX_NONE);

		vector<Point>center;
		vector<float>radius;
        bool flag=true;
		for (int i = 0; i < (int)contour.size(); i++)
		{
			Point2f c; float r;
			minEnclosingCircle(contour[i], c, r);
            if(r<27&&r>23){
                flag=false;
            }
			if (r < 35 || r>100 ||(c.y<300&&(c.x>480||c.x<580)))continue;
			Point c1; c1.x = (int)c.x;
			c1.y = (int)c.y;
			center.push_back(c1);
			radius.push_back(r);
			circle(image, c, r, Scalar(0, 0, 255), 1);
		}
        if(center.size()==0)center.push_back(last_aim);
		sort(center.begin(), center.end(), cmp);
		string sx = to_string(center[0].x);
		string sy = to_string(center[0].y);
		string scommand = "adb shell input tap " + sx + " " + sy;

        char command[scommand.length()];
        scommand.copy(command,scommand.length(),0);
        if(flag==true)
        {
            system(command);
            cout<<"clicked"<<endl;
            cout<<"cout<<\t"<<command<<endl;
        }else cout<<"not click "<<endl;
        system("adb shell input tap 950 1850");
        last_aim=center[0];
        resize(image,image,Size(300,400));
        imshow("screen",image);
        if((int)waitKey(1000)==27)break;
		//sleep(1);
	}
	getchar();
}
