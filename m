



Practical - 1
1A - ARC
Code:
#include<graphics.h>
#include<conio.h>
int main(){
int gd = DETECT, gm;
initgraph(&gd,&gm,"C:\\TurboC3\\BGI");
arc(100,100,0,135,50);
getch();
closegraph();
return 0;
}




1B - BAR
Code:
#include<graphics.h>
#include<conio.h>
int main(){
int gd = DETECT, gm;
initgraph(&gd, &gm, "C:\\TurboC3\\BGI");
bar(100,100,200,250);
getch();
closegraph();
return 0;
}



1C - CIRCLE
Code:
#include<graphics.h>
#include<conio.h>
int main(){
int gd = DETECT, gm;
initgraph(&gd, &gm, "C:\\TurboC3\\BGI");
circle(100,100,80);
getch();
closegraph();
return 0;
}



1D - ELLIPSE
Code:
#include<graphics.h>
#include<conio.h>
int main(){
int gd = DETECT, gm;
initgraph(&gd, &gm, "C:\\TurboC3\\BGI");
ellipse(100,100,0,360,80,30);
getch();
closegraph();
return 0;
}


Practical - 2


2A
Code:
#include<graphics.h>
#include<conio.h>
#include<dos.h>
#include<stdio.h>
int main(){
int gd = DETECT, gm;
int poly[12] = {350,450,350,410,430,400,350,350,300,430,350,450};
initgraph(&gd, &gm, "C:\\TurboC3\\BGI");
circle(100,100,50);
setfillstyle(1,MAGENTA);
floodfill(101,102,15);
outtextxy(75,90,"Circle");
rectangle(200,50,350,150);
setfillstyle(1,RED);
floodfill(201,55,15);
outtextxy(240,90,"Rectangle");
ellipse(500,100,0,360,100,50);
setfillstyle(1,BROWN);
floodfill(510,120,15);
outtextxy(480,90,"Ellipse");
line(5,250,700,250);
setfillstyle(1,2);
floodfill(6,250,15);
outtextxy(300,260,"Line");
sector(150,400,30,300,100,50);
setfillstyle(1,CYAN);
floodfill(151,405,15);
outtextxy(100,400,"Sector");
drawpoly(6,poly);
setfillstyle(1,8);
floodfill(351,451,15);
outtextxy(330,390,"Polygon");
getch();
closegraph();
return 0;
}


2B - Hut
Code:
#include<graphics.h>
#include<conio.h>
#include<dos.h>
int main(){
int gd = DETECT, gm;
initgraph(&gd, &gm, "C:\\TurboC3\\BGI");
setcolor(15);
rectangle(150,180,250,300);
rectangle(250,180,420,300);
rectangle(180,250,220,300);
line(200,100,150,180);
line(200,100,250,180);
line(200,100,370,100);
line(370,100,420,180);
setfillstyle(1,6);
floodfill(152,182,15);
floodfill(252,182,15);
setfillstyle(4,1);
floodfill(182,252,15);
setfillstyle(7,2);
floodfill(200,105,15);
floodfill(210,105,15);
getch();
closegraph();
return 0;
}



Practical - 3
Aim: Draw the following basic shapes in the center of the screen.

1 - Circle
#include<graphics.h>
#include<conio.h>
int main(){
int gd = DETECT, gm;
int x, y;
initgraph(&gd, &gm, "C:\\TurboC3\\BGI");
x = getmaxx()/2;
y = getmaxx()/2;
outtextxy(x-100, 150, "Circle using Graphics in C++");
circle(x, y, 100);
getch();
closegraph();
return 0;
}

2 - Rectangle
#include<graphics.h>
#include<conio.h>
int main(){
int gd = DETECT, gm;
int x, y;
initgraph(&gd, &gm, "C:\\TurboC3\\BGI");
x = getmaxx()/2;
y = getmaxx()/2;
outtextxy(x-100, 150, "Rectangle using Graphics in C++");
rectangle(x-90, y-50, x+90, y+50);
getch();
closegraph();
return 0;
}

3 - Ellipse
#include<graphics.h>
#include<conio.h>
int main(){
int gd = DETECT, gm;
int x, y;
initgraph(&gd, &gm, "C:\\TurboC3\\BGI");
x = getmaxx()/2;
y = getmaxx()/2;
outtextxy(x-100, 150, "Ellipse using Graphics in C++");
ellipse(x, y, 0, 360, 100, 50);
getch();
closegraph();
return 0;
}


4 - Line
#include<graphics.h>
#include<conio.h>
int main(){
int gd = DETECT, gm;
int x, y;
initgraph(&gd, &gm, "C:\\TurboC3\\BGI");
x = getmaxx()/2;
y = getmaxx()/2;
outtextxy(x-100, 150, "Line using Graphics in C++");
line(x-100, y, x+100, y);
getch();
closegraph();
return 0;
}


Practical - 4


4a Aim: Develop the program for DDA Line drawing algorithm.
DDA Algorithm:
Algo:
Funcion Description
Code:
#include<stdio.h>
#include<conio.h>
#include<math.h>
#include<graphics.h>
#include<dos.h>
void main(){
float x, y, x1, x2, y1, y2, dx, dy, l;
int i, gd = DETECT, gm;
clrscr();
printf("x1 and y1: ");
scanf("%f %f", &x1, &y1);
printf("x2 and y2: ");
scanf("%f %f", &x2, &y2);
detectgraph(&gd, &gm);
initgraph(&gd, &gm, "C:\\TurboC3\\BGI");
dx = abs(x2 - x1);
dy = abs(y2 - y1);
if(dx >= dy) {
l = dx;
}
else {
l = dy;
}
dx = (x2 - x1) / l;
dy = (y2 - y1) / l;
x = x1 + 0.5;
y = y1 + 0.5;
i = 0;
while(i < l) {
putpixel(x, y, WHITE);
x = x + dx;
y = y + dy;
i = i + 1;
delay(100);
}
getch();
closegraph();
}
Output: x1 and y1: 100 200
x2 and y2: 200 300





4b Aim: Develop the program for Bresenham’s Line drawing algorithm.
Bresenham’s Line Drawing Algorithm:
Algo:

Code:
#include<stdio.h>
#include<conio.h>
#include<math.h>
#include<graphics.h>
#include<dos.h>
void main(){
float x, y, x1, x2, y1, y2, dx, dy, l, e;
int i, gd = DETECT, gm;
clrscr();
printf("x1 and y1: ");
scanf("%f %f", &x1, &y1);
printf("x2 and y2: ");
scanf("%f %f", &x2, &y2);
detectgraph(&gd, &gm);
initgraph(&gd, &gm, "C:\\TurboC3\\BGI");
dx = abs(x2 - x1);
dy = abs(y2 - y1);
x = x1;
y = y1;
e = 2*dx-dy;
i = 0;
for(i = 0; i <= dx; i++) {
putpixel(x, y, WHITE);
while(e >= 0) {
y = y + 1;
e = e-2*dx;
}
x = x + 1;
e = e+2*dy;
delay(50);
}
getch();
closegraph();
}
Output: x1 and y1: 100 200
x2 and y2: 200 300




5 Aim:

Develop the program for the mid-point circle drawing algorithm.
Algo:
1. Get radius and coordinates from the user.
2. Find out the decision parameter that decides the nearest point to select using:
d=5/4-r
3. While Y is greater than X do
if d is smaller than 0, then
y=y
x=x+1
d=2x+1
else
y=y-1
x=x+1
d=d+2x-2y+1
4. Determine and plot the symmetry points for all eight octants.
5. Repeat step 3 and 4, till y>x
Code:
#include<stdio.h>
#include<conio.h>
#include<math.h>
#include<graphics.h>
#include<dos.h>
void main() {
float x, y, r, d;
int gd = DETECT,gm;
clrscr();
printf("Enter the value of radius: ");
scanf("%f", &r);
detectgraph(&gd, &gm);
initgraph(&gd, &gm, "C:\\TurboC3\\BGI");
d = 3-2*r;
x = 0;
y = r;
do {
putpixel(200+x,200+y,2);
putpixel(200+y,200+x,2);
putpixel(200+y,200-x,2);
putpixel(200+x,200-y,2);
putpixel(200-x,200-y,2);
putpixel(200-y,200-x,2);
putpixel(200-y,200+x,2);
putpixel(200-x,200+y,2);
if(d < 0) {
d = d+4*x+6;
}
else {
d = d+4*(x-y)+10;
y = y - 1;
}
x = x + 1;
delay(10);
}while(x < y);
getch();
closegraph();
}
Output: Radius: 100



6a Aim: Write a program to implement 2D scaling. (Triangle)
Algo:
1. Make a 2x2 scaling matrix S as:
Sx 0
0 Sy
2. For each point of the polygon.
(i) Make a 2x1 matrix P, where P[0][0] equals
to x coordinate of the point and P[1][0]
equals to y coordinate of the point.
(ii) Multiply scaling matrix S with point
matrix P to get the new coordinate.
3. Draw the polygon using new coordinates.
Code:
#include<stdio.h>
#include<conio.h>
#include<math.h>
#include<graphics.h>
#include<dos.h>
void main(){
int x1, x2, x3, y1, y2, y3, a1, a2, a3, b1, b2, b3, tx, ty;
int gd = DETECT, gm;
clrscr();
detectgraph(&gd, &gm);
initgraph(&gd, &gm, "C:\\TurboC3\\BGI");
printf("x1 and y1: ");
scanf("%d %d", &x1, &y1);
printf("x2 and y2: ");
scanf("%d %d", &x2, &y2);
printf("x3 and y3: ");
scanf("%d %d", &x3, &y3);
line(x1, y1, x2, y2);
line(x2, y2, x3, y3);
line(x3, y3, x1, y1);
printf("Enter Scaling in x, y direction: ");
scanf("%d %d", &tx, &ty);
a1 = x1 * tx;
b1 = y1 * ty;
a2 = x2 * tx;
b2 = y2 * ty;
a3 = x3 * tx;
b3 = y3 * ty;
line(a1, b1, a2, b2);
line(a2, b2, a3, b3);
line(a3, b3, a1, b1);
getch();
closegraph();
}
Output: x1 y1: 100 200
x2 y2: 150 150
x3 y3: 200 200
x y: 2 2


6b Aim: Write a program to perform 2D translation. (Triangle)
Algo:
If point (X, Y) is to be translated by amount Dx and Dy to a new location (X’, Y’) then new
coordinates can be obtained by adding Dx to X and Dy to Y as:
X' = Dx + X
Y' = Dy + Y
or P' = T + P where
P' = (X', Y'),
T = (Dx, Dy ),
P = (X, Y)
Code:
#include<stdio.h>
#include<conio.h>
#include<math.h>
#include<graphics.h>
#include<dos.h>
void main(){
int x1, x2, x3, y1, y2, y3, a1, a2, a3, b1, b2, b3, tx, ty;
int gd = DETECT, gm;
clrscr();
detectgraph(&gd, &gm);
initgraph(&gd, &gm, "C:\\TurboC3\\BGI");
printf("x1 and y1: ");
scanf("%d %d", &x1, &y1);
printf("x2 and y2: ");
scanf("%d %d", &x2, &y2);
printf("x3 and y3: ");
scanf("%d %d", &x3, &y3);
line(x1, y1, x2, y2);
line(x2, y2, x3, y3);
line(x3, y3, x1, y1);
printf("Enter Translation in x, y direction: ");
scanf("%d %d", &tx, &ty);
a1 = x1 + tx;
b1 = y1 + ty;
a2 = x2 + tx;
b2 = y2 + ty;
a3 = x3 + tx;
b3 = y3 + ty;
line(a1, b1, a2, b2);
line(a2, b2, a3, b3);
line(a3, b3, a1, b1);
getch();
closegraph();
}
Output: x1 y1: 100 200
x2 y2: 150 150
x3 y3: 200 200
x y: 150 10


9a Aim: Write a program to fill a circle using Flood Fill Algorithm.
Code:
#include<conio.h>
#include<dos.h>
#include<graphics.h>
void floodfill(int x,int y,int fillColor,int oldColor){
if(getpixel(x,y)==oldColor){
putpixel(x,y,fillColor);
putpixel(x,y,fillColor);
delay(5);
floodfill(x+1,y,fillColor,oldColor);
floodfill(x-1,y,fillColor,oldColor);
floodfill(x,y+1,fillColor,oldColor);
floodfill(x,y-1,fillColor,oldColor);
}
}
void main(){
int gd=DETECT,gm;
initgraph(&gd,&gm,"C:\\turboc3\\bgi");
rectangle(50,50,100,100);
floodfill(55,55,GREEN,0);
getch();
closegraph();
}
Output:



9b Aim: Write a program to fill a circle using Boundary Fill Algorithm. (8-points)
Code:
#include<graphics.h>
#include<conio.h>
#include<dos.h>
void boundaryFill8(int x, int y, int fill_color, int
boundary_color){
if(getpixel(x,y)!=boundary_color && getpixel(x,y)!=fill_color)
{
putpixel(x,y,fill_color);
boundaryFill8(x+1,y,fill_color,boundary_color);
boundaryFill8(x,y+1,fill_color,boundary_color);
boundaryFill8(x-1,y,fill_color,boundary_color);
boundaryFill8(x,y-1,fill_color,boundary_color);
boundaryFill8(x-1,y-1,fill_color,boundary_color);
boundaryFill8(x-1,y+1,fill_color,boundary_color);
boundaryFill8(x+1,y-1,fill_color,boundary_color);
boundaryFill8(x+1,y+1,fill_color,boundary_color);
}
}
int main(){
int gd = DETECT, gm;
initgraph(&gd, &gm, "C:\\TurboC3\\BGI");
rectangle(50, 50, 100, 100);
boundaryFill8(55, 55, 4, 15);
//delay(10000);
getch();
closegraph();
return 0;
}
Output:


10a Aim:
Develop a simple text screen saver using graphics functions.
Code:
#include<graphics.h>
#include<conio.h>
#include<dos.h>
void main(){
int gd = DETECT, gm, col = 480, row = 640, font = 4, direction
= 2, size = 8, color = 15;
initgraph(&gd, &gm, "C:\\TurboC3\\BGI");
cleardevice();
while(!kbhit()){
settextstyle(random(font), random(direction), random(size));
setcolor(random(color));
outtextxy(random(col), random(row), "Computer Graphics")
delay(250);
}
closegraph();
}
10c Aim:
Draw the moving car on the screen.
Code:
#include <stdio.h>
#include <graphics.h>
#include <conio.h>
#include <dos.h>
void main()
{
int gd=DETECT,gm;
int i, maxx, midy;
initgraph(&gd,&gm,"c:\\TurboC3\\bgi");
maxx = getmaxx();
midy=getmaxy()/2;
for(i=0;i<maxx-150;i=i+5)
{
cleardevice();
setcolor(WHITE);
line(0, midy+37,maxx,midy + 37);a
setcolor(YELLOW); setfillstyle(SOLID_FILL, RED);
line(i, midy + 23, i, midy); line(i, midy, 40+ i, midy-20);
line(40 + i, midy-20,80 + i,midy -20); line(80 + i, midy-20,
100 +i,midy);
line(100 + i, midy, 120 +i, midy); line(120+ i, midy, 120 + i,
midy+23);
line(0+ i, midy +23, 18 + i, midy+23); arc(30 + i, midy
+23,0,180,12);
line(42 +i, midy +23, 78 +i, midy +23); arc(90 +i, midy +23, 0,
180, 12);
line(102 +i, midy +23, 120 +i, midy+23); line(28+ i, midy, 43
+i, midy - 15);
line(43 +i, midy-15, 57 + i, midy - 15); line(57+i, midy - 15,
57+i, midy);
line(57 + i, midy, 28 + i, midy);
line(62 + i, midy-15, 77 + i, midy-15);
line(77 + i, midy-15, 92 + i, midy); line(92 + i, midy, 62 + i,
midy);
line(62 + i, midy, 62 + i, midy - 15); floodfill(5 + i, midy +
22, YELLOW);
setcolor(BLUE); setfillstyle(SOLID_FILL, DARKGRAY);
circle(30 + i, midy + 25, 9); circle(90 +i, midy + 25, 9);
floodfill(30 + i, midy + 25, BLUE); floodfill(90+i, midy + 25,
BLUE);
delay(10);
}
getch();
closegraph();
}
