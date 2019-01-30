public void setup(){
	size(500,500);
	fractal(250,250, 100);
}

public void draw(){
	
}

public void fractal(float x,float y,float size){
	ellipse(x,y,size,size);
	if(size > 20){
		float yOffset = (float)Math.cos(2*PI/3)*size;
		float xOffset = (float)Math.cos(2*PI/3)*size;
		float divideSize = 2;
		fractal(x, y, size/divideSize);
		for(int a = 1; a <= 6; a++){
			fractal((float)Math.cos(a*PI/3)*size + x, (float)Math.sin(a*PI/3)*size + y,size/divideSize);
		}
		/*fractal((float)Math.cos(PI/3)*size + x, (float)Math.sin(PI/3)*size + y,size/divideSize);
		fractal((float)Math.cos(2*PI/3)*size + x, (float)Math.sin(2*PI/3)*size + y,size/divideSize);
		fractal((float)Math.cos(PI)*size + x, (float)Math.sin(PI)*size + y,size/divideSize);
		fractal((float)Math.cos(4*PI/3)*size + x, (float)Math.sin(4*PI/3)*size + y,size/divideSize);
		fractal((float)Math.cos(5*PI/3)*size + x, (float)Math.sin(5*PI/3)*size + y,size/divideSize);
		fractal((float)Math.cos(2*PI)*size + x,(float)Math.sin(2*PI)*size + y,size/divideSize);
		
		fractal(x + xOffset, y + yOffset, size/divideSize);
		fractal(x - xOffset, y - yOffset, size/divideSize);
		fractal(x + xOffset, y - yOffset, size/divideSize);
		fractal(x - xOffset, y + yOffset, size/divideSize);*/
	}
}