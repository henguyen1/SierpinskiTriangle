public void setup()
{
	size(800,800);
}
public void draw()
{	
	sierpinski(400,400,500);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 20)
	{
		triangle(x,y,x+len,y,x+(((x+len)-x)/2),y-len);
	}
	else 
	{
		triangle(x,y,x+len/2,y,x+len/4,y-len/2);
	}
}