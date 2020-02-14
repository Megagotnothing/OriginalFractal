PImage img;
float angle;
float scale = 0.9;
float xpos = 0.65;
float ypos = 0.15;
public void setup()
{
	imageMode(CENTER);
	frameRate(15);
	size(600,600);
	angle = 0;
	img = loadImage("dannydorito.png");
	println(img.width,img.height);

}

public void draw()
{
	//background(255);


	mousePress();
	//example();

	//fractal(300,300,300,0);
	fractal(-150,-150,900,0);
	//scale += 0.1;
	//angle++;
}

public void fractal(float x,float y, float len, float angle)
{
	if(len <= 1)
	{	
		//image(img,x,y,len,len);

	}
	else
	{

		translate(x,y);
		rotate(angle);
		image(img,0,0,len,len);
		fractal(len*xpos,-len*ypos,len*scale,PI/3);

		//rotate(-angle);
		//rotate(-angle);
		//fractal(-len*xpos,-len*ypos,len*scale,PI/3);


	}
		//image(img,0,0,len,len);



}

public void mousePress()
{
	if(mousePressed == true)
		println(mouseX,mouseY);
}

public void example()
{
	imageMode(CENTER);
		rectMode(CENTER);
		translate(300,300);

		rect(0, 0, img.width, img.height);
		image(img,0,0,img.width,img.height);

		translate(382*0.40,0);
		rotate(radians(60));
		image(img,0,0,382/2,362/2);
		rotate(radians(-60));
		translate(-382*0.40,0);

		translate(-382*0.40,0);
		rotate(radians(-60));
		image(img,0,0,382/2,362/2);
		rotate(radians(60));
		translate(382*0.40,362/2);
		
		rotate(radians(180));
		image(img,0,0,382/2,362/2);
		rotate(radians(180));
}