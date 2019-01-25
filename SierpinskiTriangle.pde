public void setup()
{
	size(400,400);
}
public void draw()
{	
	sierpinski(150,250,20);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 100){
		triangle(x,y,x+len,y,x+(0.5)*len,y-len);
	}
	else{
		sierpinski(150,250,len-20);
	}
}