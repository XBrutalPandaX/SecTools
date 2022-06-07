#include <graphics.h>
#include <iostream>
#include <conio.h>
#include <winuser.h>

using namespace std;
int main(){
	int gd=0, gm,i=5,count=0;
	POINT xypos;
	initwindow(500,1377,"Recoil Control Script",0,0);
	GetCursorPos(&xypos);
	setcolor(RED);
	outtext("Press Any key to Stop:");
	setcolor(WHITE);
	outtext("\n running script");
	while(!kbhit()){
		if(GetAsyncKeyState(0x01)){
			while(!kbhit()){
				GetCursorPos(&xypos);
				SetCursorPos(xypos.x,xypos.y+i);
				i++;
				delay(10);
				break;
			}
		}
		
		}
	getch();
}

	