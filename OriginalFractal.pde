public void setup(){
	size(700,700);
	fractal(width/2,height/2,300);

	fractal(0,0,200);

}
public void fractal(int x, int y, int size){
	fill(size,100,100);
	if(size <=0){
		ellipse(x,y,size,size);
	}else{
		ellipse(x,y,size,size);
		ellipse(width-x,height-y,size,size);
		ellipse(width-x, y,size,size);
		ellipse(x,height-y,size,size);
		fractal(x+15,y+15, size-5);
	}
}