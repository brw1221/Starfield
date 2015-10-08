Particle [] parts;
public void setup()
{
	size(500,500);
	background(0);
	parts = new Particle[300];
	for(int i = 0; i < parts.length; i++)
	{
		parts[i] = new NormalParticle();
	}
	parts[0] = new OddballParticle();
	parts[1] = new JumboParticle();
}
public void draw()
{
	background(0);
	for(int i = 0; i < parts.length; i++)
	{
		parts[i].move();
		parts[i].grow();
		parts[i].show();
		parts[i].wrap();
		parts[0].walk();
	}

}
class NormalParticle implements Particle
{
	double dX, dY, dAngle, dSpeedX, dSpeedY;
	int dRed, dGreen, dBlue, dSize;
	NormalParticle()
	{
		dRed = 255;
		dGreen = 255;
		dBlue = 255;
		dSize = (int)(Math.random()*4+1);
		dX = 250;
		dY = 250;
		dAngle = (Math.random()*2*Math.PI);
		dSpeedX = (Math.random()*2+1);
		dSpeedY = (Math.random()*2+1);

	}
	public void move()
	{
		dX += Math.cos(dAngle)*dSpeedX;
		dY += Math.sin(dAngle)*dSpeedY;
	}
	public void walk()
	{

	}
	public void grow()
	{
		dSize = dSize;
	}
	public void show()
	{
		fill(dRed, dGreen, dBlue);
		ellipse((float)dX, (float)dY, dSize, dSize);
	}
	public void wrap()
	{
		if(dX>500 || dX<0 ||dY>500 || dY<0)
		{
			dRed = 255;
			dBlue = 255;
			dGreen = 255;
			dSize = (int)(Math.random()*4+1);
			dX = 250;
			dY = 250;
			dAngle = (Math.random()*2*Math.PI);
			dSpeedX = (Math.random()*2+1);
			dSpeedY = (Math.random()*2+1);
		}
		
	}
}
interface Particle
{
	public void move();
	public void grow();
	public void show();
	public void wrap();
	public void walk();
}
class OddballParticle implements Particle
{
	double oX, oY, oAngle, oSpeedX, oSpeedY, oSize;
	int oRed, oBlue, oGreen;
	OddballParticle()
	{

		oRed = 255;
		oBlue = 153;
		oGreen = 255;
		oX = mouseX;
		oY = mouseY;
		oAngle = (Math.random()*2*Math.PI);
		oSpeedX = (Math.random()*0.5+1);
		oSpeedY = (Math.random()*0.5+1);
		oSize = 20;
	}
	public void move()
	{
		oX += Math.cos(oAngle)*oSpeedX;
		oY += Math.sin(oAngle)*oSpeedY;
	}
	public void walk()
	{
		oX += (int)(Math.random()*3)-1;
 		oY += (int)(Math.random()*3)-1;
	}
	public void grow()
	{

	}
	public void show()
	{
		fill(oRed, oGreen, oBlue);
		ellipse((float)oX, (float)oY, (float)oSize,(float)oSize);
	}
	public void wrap()
	{

		if(oX>500 || oX<0 || oY>500 || oY<0)
		{
			oRed = 255;
			oBlue = 153;
			oGreen = 255;
			oSize = 20;
			oX = 250;
			oY = 250;
			oAngle = (Math.random()*2*Math.PI);
			oSpeedX = (Math.random()*2+1);
			oSpeedY = (Math.random()*2+1);
		}
	}
}
class JumboParticle extends NormalParticle
{
	JumboParticle()
	{
		dRed = (int)(Math.random()*255);
		dGreen = (int)(Math.random()*255);
		dBlue = (int)(Math.random()*255);
		dSize = 0;
	}
	public void grow()
	{
		dSize = dSize+1;
	}
	public void show()
	{
		fill(dRed, dGreen, dBlue);
		ellipse((float)dX, (float)dY, (float)dSize,(float)dSize);
	}
	public void wrap()
	{
		if(dX>1000 || dX<-200 ||dY>1000 || dY<-200)
		{
			dRed = (int)(Math.random()*255);
			dBlue = (int)(Math.random()*255);
			dGreen = (int)(Math.random()*255);
			dSize = 0;
			dX = 250;
			dY = 250;
			dAngle = (Math.random()*2*Math.PI);
			dSpeedX = (Math.random()*2+1);
			dSpeedY = (Math.random()*2+1);
		}
		
	}
}

