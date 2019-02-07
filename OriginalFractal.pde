ArrayList<ArrayList<Float>> fracs = new ArrayList<ArrayList<Float>>();
int[] colors = {#9cd6d8, #ace572,#ffbfeb,#fffaaa,#ffdc9b};
public void setup(){
	size(500,500);
	strokeWeight(2);
}

public void draw(){
	background(197, 198, 194);
	for(int a = fracs.size() - 1; a >= 0; a --){
		ArrayList<Float> currentFrac = fracs.get(a);
		if(currentFrac.get(2) >= 300){
			fracs.remove(a);
		}else{
			currentFrac.set(2,currentFrac.get(2) + 1);
			//println(currentFrac.get(3));
			stroke(colors[Math.round(currentFrac.get(3))]);
			fractal(currentFrac.get(0),currentFrac.get(1),currentFrac.get(2));
		}
	}
}

public void mouseClicked(){
	ArrayList<Float> values = new ArrayList<Float>();
	values.add((float)mouseX);
	values.add((float)mouseY);
	values.add(50.0);
	//println(colors[0]);
	values.add((float)((int)(Math.random()*colors.length)));
	fracs.add(0,values);
	fractal(mouseX,mouseY,50);
}

public void fractal(float x,float y,float size){
	noFill();
	//fill(197, 198, 194);
	//stroke(colors[(int)(Math.random()*3)]);
	ellipse(x,y,size,size);
	if(size > 20){
		for(int a = 1; a <= 6; a++){
			fractal((float)Math.cos(a*PI/3)*size + x, (float)Math.sin(a*PI/3)*size + y,size/2);
		}
	}
}