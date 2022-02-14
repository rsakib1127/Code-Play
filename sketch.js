const density = "Ñ@#W$9876543210?!abc;:+=-,._ ";

let gloria;

function preload() {
  gloria = loadImage("gloria48.jpg");
}

function setup() {




    createCanvas(400,400)
}

function draw(){
    background(255)
    image(gloria,0,0, width, height)
}