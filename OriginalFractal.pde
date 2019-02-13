public void setup(){
	size(700,700);
	rectMode(CENTER);
	fractal(350,350,400);
}
public void fractal(float x, float y, float size){

	fill(size/4+(float)Math.random()*155,size/4+(float)Math.random()*155,size/4+(float)Math.random()*155);
		ellipse(x,y,size,size);
	if(size <=1){
		ellipse(x,y,size,size);
	}else{
		fractal(x-15,y-15, size*0.8);
	}
}
public void fractalex(int x, int y, int size){
	rect(x,y,size,size);
	if(size>5){
		fractalex(x+size/2,y,size/2);
		fractalex(x-size/2,y,size/2);
	}
}