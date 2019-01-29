public void setup(){
	size(500,500);
	fractal(250,250, 500);
}

public void draw(){
	
}

public void fractal(float x,float y,float size){
	if(size < 20){
		ellipse(x,y,size,size);
	}else{
		fractal(x, y, size/2);
		fractal(x + size/2, y + size/2, size/2);
		fractal(x - size/2, y - size/2, size/2);
		fractal(x + size/2, y - size/2, size/2);
		fractal(x - size/2, y + size/2, size/2);
	}
}