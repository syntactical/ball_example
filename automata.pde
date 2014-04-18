  
int cols = 28;
int rows = 18;
int chance = 0;
int s = 50;
int[][] dataGrid = new int[cols][rows];
int[][] tempGrid = new int[cols][rows];

void makeAutomata(){
  if(automata){
  for(int i = 0; i < cols; i++){
    for(int j = 0; j < rows; j++){
        dataGrid[i][j] = 0;
        tempGrid[i][j] = 0;
     
      }
    }
  
  dataGrid[5][4] = 1;

  }
}


void crystallize(){
  if(automata){
  if(frameCount%10 == 1){
  //make sure dataGrid has no numbers > 1
  for(int i=1; i < cols; i++){
    for(int j = 1; j < rows; j++){
        if(dataGrid[i][j] > 1){
          dataGrid[i][j] = 1;
        
      }
    }
  }
  
  //update tempGrid all but edges
  for(int i = cols; i < 2*cols; i++){
    for(int j = rows; j < 2*rows; j++){
        tempGrid[i%cols][j%rows] = (dataGrid[(i-1)%cols][j%rows] + dataGrid[(i+1)%cols][(j)%rows] + dataGrid[i%cols][(j+1)%rows] + dataGrid[i%cols][(j-1)%rows] //+ dataGrid[i%cols][(j)%rows]
                                          + dataGrid[(i+1)%cols][(j+1)%rows] + dataGrid[(i-1)%cols][(j-1)%rows] //+ dataGrid[(i+1)%cols][(j-1)%rows] + dataGrid[(i-1)%cols][(j+1)%rows]
                                          //dataGrid[(i-2)%cols][(j)%rows] + dataGrid[(i+2)%cols][(j)%rows] + dataGrid[(i+3)%cols][(j)%rows] + dataGrid[(i-3)%cols][(j)%rows]
                                          )%2;
        //dataGrid[(i-1)%cols][(j-1)%rows] + dataGrid[(i)%cols][(j-1)%rows] + dataGrid[(i+1)%cols][(j-1)%rows] +
        //dataGrid[(i-1)%cols][(j)%rows] + dataGrid[(i)%cols][(j)%rows] + dataGrid[(i+1)%cols][(j)%rows] +
        //dataGrid[(i-1)%cols][(j+1)%rows] + dataGrid[(i)%cols][(j+1)%rows] + dataGrid[(i+1)%cols][(j+1)%rows];
      
    }
  }
  
  //update dataGrid
  for(int i = 0; i < cols; i++){
    for(int j = 0; j < rows; j++){
      dataGrid[i][j] = tempGrid[i][j];
        //rule 1
        //if(dataGrid[i][j] == 0 && tempGrid[i][j] == 3){
        //  dataGrid[i][j] = 1;
        //}
        //rule 2
        //if(dataGrid[i][j] == 1 && tempGrid[i][j] == 1){
        //  dataGrid[i][j] = 0;
        //}
        //if(dataGrid[i][j] == 1 && tempGrid[i][j] == 2){
        //  dataGrid[i][j] = 0;
        //}
        //if(dataGrid[i][j] == 1 && tempGrid[i][j] == 5){
        //  dataGrid[i][j] = 0;
        //}
        
      
    }
  }
  }
  
  //display dataGrid
  
  for(int i = 0; i < cols; i++){
    for(int j = 0; j < rows; j++){

      if(dataGrid[i][j] == 1){
        colorMode(RGB);
        fill(255);
        noStroke();
        rect(i*s, j*s, s, s);  
      }
    }
  }
  }
}

