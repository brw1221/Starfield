NormalParticle [] parts;
public void setup()
{
	size(500,500);
	background(0);
	parts = new NormalParticle[300];
	for(int i = 0; i < parts.length; i++)
	{
		parts[i] = new NormalParticle();
	}
}
public void draw()
{
	background(0);
	for(int i = 0; i < parts.length; i++)
	{
		parts[i].move();
		parts[i].show();
	}
}
class NormalParticle implements Particle
{
	double dX, dY, dAngle, dSpeedX, dSpeedY;
	int dColor, dSize;
	NormalParticle()
	{
		dColor = 255;
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
	public void show()
	{
		fill(dColor, dColor, dColor);
		ellipse((float)dX, (float)dY, dSize, dSize);
	}
}
interface Particle
{
	public void move();
	public void show();
}
class OddballParticle implements Particle
{
	//your code here
}
class JumboParticle 
{
	//your code here
}

