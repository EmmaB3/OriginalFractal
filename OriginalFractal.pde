ArrayList<ArrayList<Float>> fracs = new ArrayList<ArrayList<Float>>();
public void setup(){
	size(500,500);
	//fractal(250,250, 100);
}

public void draw(){
	for(ArrayList<Float> a : fracs){
		a.set(2, a.get(2)*2);
		fractal(a.get(0), a.get(1), a.get(2));
	}
}

public void mouseClicked(){
	ArrayList<Float> values = new ArrayList<Float>();
	values.add((float)mouseX);
	values.add((float)mouseY);
	values.add(50.0);
	fracs.add(values);
	background(197, 198, 194);
	fractal(mouseX,mouseY,50);
}

public void fractal(float x,float y,float size){
	fill(197, 198, 194);
	stroke(172, 229, 114);
	ellipse(x,y,size,size);
	if(size > 20){
		for(int a = 1; a <= 6; a++){
			fractal((float)Math.cos(a*PI/3)*size + x, (float)Math.sin(a*PI/3)*size + y,size/2);
		}
	}
}