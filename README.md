本程序是微信小游戏弹一弹的辅助。

平台：win10       visual studio 2013     opencv3.0.0



首先用adb工具对手机屏幕进行截图，然后读取该截图，用Opencv处理找到最上面的方块的中心，再使用adb模拟屏幕点击该中心。



缺点：没有考虑到子弹撞击的反弹，没有对方块内的数字进行识别，无法确定每次发弹的时间间隔





