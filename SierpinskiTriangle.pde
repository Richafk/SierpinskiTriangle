public void setup()
{
	size(800,800);
}
public void mouseDragged()//optional
{
	background(color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255)));
}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 30){
    triangle(x,y,x+len,y,x+(int)(len/2),y-len);
    fill(color(100,150,200));
  }else{
    sierpinski(x,y,(int)(len/2));
    sierpinski(x+(int)(len/2), y, (int)(len/2));
    sierpinski(x+(int)(len/4), y - (int)(len/2), (int)(len/2));
  }
}
public void draw()
{
	sierpinski(100,700,600);
}
