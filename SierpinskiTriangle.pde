public void setup()
{
	size(800,800);
}
public void draw()
{	
	sierpinski(000,800,800);
}
public void mousePressed()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 10)
	{
		triangle(x,y,x+len,y,x+(((x+len)-x)/2),y-len);
	}
	else 
	{
		sierpinski(x,y,(len/2));
		fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		sierpinski(x+(len/4),y-(len/2),(len/2));
		fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		sierpinski(x+(len/2),y,(len/2));
		fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	}	
}