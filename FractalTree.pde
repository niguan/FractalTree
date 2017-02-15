private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(320,480,320,380);   
	drawBranches(320,380,100,3*Math.PI/2);
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	//your code here 
	double angle1,angle2,angle1a,angle2a;
	int endX1, endX1a, endX2, endX2a, endY1, endY1a, endY2, endY2a;
	branchLength = branchLength*fractionLength;
	angle1 = angle + branchAngle;
	angle1a = angle + branchAngle/2;
	angle2 = angle - branchAngle;
	angle2a = angle - branchAngle/2;
	endX1 = (int)(branchLength*Math.cos(angle1) + x);
	endX1a = (int)(branchLength*Math.cos(angle1a) + x);
	endY1 = (int)(branchLength*Math.sin(angle1) + y);
	endY1a = (int)(branchLength*Math.sin(angle1a) + y);	
	endX2 = (int)(branchLength*Math.cos(angle2) + x);
	endY2 = (int)(branchLength*Math.sin(angle2) + y);
	endX2a = (int)(branchLength*Math.cos(angle2a) + x);
	endY2a = (int)(branchLength*Math.sin(angle2a) + y);
	line(x,y,endX1,endY1);
	line(x,y,endX2,endY2);
	if (branchLength > smallestBranch)
	{
		drawBranches(endX1,endY1,branchLength,angle1);
		drawBranches(endX2,endY2,branchLength,angle2);
		drawBranches(endX1a,endY1a,branchLength,angle1a);
		drawBranches(endX2a,endY2a,branchLength,angle2a);
	}
}
