bolt[] steve = new bolt[10];
bolt[] steve1 = new bolt[10];
void setup()
{
  size(300,300);
  strokeWeight(2);
  background(0, 0, 0);
}
void draw()
{
	int y = 0;
	int x = 0;
	for(int i = 0; i < 10 ; i++)
	{
		steve[i] = new bolt(0,y,0,y);
		steve[i].show();
		y = y + 30;
	}
	for(int i = 0; i < 10 ; i++)
	{
		steve1[i] = new bolt(x,0,x,0);
		steve1[i].showVertical();
		x = x + 30;
	}
}

void mousePressed()
{
	background(0,0,0);
}

class bolt
{
	int startX, startY, endX, endY;
	bolt(int startX1,int startY1,int endX1,int endY1)
	{
		startX = startX1;
		startY = startY1;
		endX = endX1;
		endY = endY1;
	}
	void show()
	{
		stroke(int(random(0, 255)),int(random(0, 255)),int(random(0, 255)));
		while(endX < 300)
		{
			endX = startX + (int)(Math.random() * 10);
			endY = startY + (int)((Math.random() * 20)-10);
			line(startX, startY, endX, endY);
			startX = endX;
			startY = endY;
		}
	}
	void showVertical()
	{
		stroke(int(random(0, 255)),int(random(0, 255)),int(random(0, 255)));
		while(endY < 300)
		{
			endX = startX + (int)((Math.random() * 20)-10);
			endY = startY + (int)(Math.random() * 10);
			line(startX, startY, endX, endY);
			startX = endX;
			startY = endY;
		}
	}	
	void reset()
	{
		startX = 0;
		startY = 150;
		endX = 0;
		endY = 150;
	}
}