import java.util.Scanner;

int count = 0;

//Check if conditions are met for the player winning
public boolean didPlayerWin() {
  //top row (0, 1, and 2)
  if (playerWinConditional[0][0] == 1 && playerWinConditional[1][0] == 1 && playerWinConditional[2][0] == 1) {
  System.out.println("You Win!");
  return true;

//middle row (3, 4, and 5)
} else if (playerWinConditional[0][1] == 1 && playerWinConditional[1][1] == 1 && playerWinConditional[2][1] == 1) {
  System.out.println("You Win!");
  return true;

//bottom row (6, 7, and 8)
} else if (playerWinConditional[0][2] == 1 && playerWinConditional[1][2] == 1 && playerWinConditional[2][2] == 1) {
  System.out.println("You Win!");
  return true;

//left column (0, 3, and 6)
} else if (playerWinConditional[0][0] == 1 && playerWinConditional[0][1] == 1 && playerWinConditional[0][2] == 1) {
  System.out.println("You Win!");
  return true;

//middle column (1, 4, and 7)
} else if (playerWinConditional[1][0] == 1 && playerWinConditional[1][1] == 1 && playerWinConditional[1][2] == 1) {
  System.out.println("You Win!");
  return true;

//right column (2, 5, and 8)
} else if (playerWinConditional[2][0] == 1 && playerWinConditional[2][1] == 1 && playerWinConditional[2][2] == 1) {
  System.out.println("You Win!");
  return true;

//diagonal 1 (0, 4, and 8)
} else if (playerWinConditional[0][0] == 1 && playerWinConditional[1][1] == 1 && playerWinConditional[2][2] == 1) {
  System.out.println("You Win!");
  return true;

//diagonal 2 (2, 4, and 6)
} else if(playerWinConditional[2][0] == 1 && playerWinConditional[1][1] == 1 && playerWinConditional[0][2] == 1) {
  System.out.println("You Win!");
  return true;

  //The player has not won
} else

  return false;
}


//Check if conditions are met for the bot winning
public boolean didBotWin() {

  //Top row (0, 1, and 2)
if(botWinConditional[0][0] == 1 && botWinConditional[1][0] == 1 && botWinConditional[2][0] == 1) {
  System.out.println("You Lose.");
  return true;

  //Middle row (3, 4, and 5)
} else if(botWinConditional[0][1] == 1 && botWinConditional[1][1] == 1 && botWinConditional[2][1] == 1) {
  System.out.println("You Lose.");
  return true;

  //Bottom Row (6, 7, and 8)
} else if(botWinConditional[0][2] == 1 && botWinConditional[1][2] == 1 && botWinConditional[2][2] == 1) {
  System.out.println("You Lose.");
  return true;

  //Left Column (0, 3, and 6)
} else if(botWinConditional[0][0] == 1 && botWinConditional[0][1] == 1 && botWinConditional[0][2] == 1) {
  System.out.println("You Lose.");
  return true;

  //Middle Column (1, 4, and 7)
} else if(botWinConditional[1][0] == 1 && botWinConditional[1][1] == 1 && botWinConditional[1][2] == 1) {
  System.out.println("You Lose.");
  return true;

  //Right Column (2, 5, and 8)
} else if(botWinConditional[2][0] == 1 && botWinConditional[2][1] == 1 && botWinConditional[2][2] == 1) {
  System.out.println("You Lose.");
  return true;

  //Diagonal 1 (0, 4, and 8)
} else if(botWinConditional[0][0] == 1 && botWinConditional[1][1] == 1 && botWinConditional[2][2] == 1) {
  System.out.println("You Lose.");
  return true;

  //Diagonal 2 (2, 4, and 6)
} else if(botWinConditional[2][0] == 1 && botWinConditional[1][1] == 1 && botWinConditional[0][2] == 1) {
  System.out.println("You Lose.");
  return true;

//The bot has not won.
} else

  return false;
}

//Check if conditions are met for a tie (all 9 slots are full)
double isBoardFilled() {
  int sum = 0;
  for(int i = 0; i < 3; i++)
    for (int j = 0; j < 3; j++)
  sum = sum + filledBoardConditional [i][j];
  return sum / 9;
}

boolean didTheyTie() {
 if (isBoardFilled() < 1) {
  return false;
 } else {
  System.out.println("It's a tie.");
  return true;
  }
}



//Checks and tells player if the game is still going

void keyPressed() {
  if(didPlayerWin() == false && didBotWin() == false && didTheyTie() == false) {
    GamePlayer();
    didPlayerWin();
    didBotWin();
    didTheyTie();
    if (didPlayerWin() == false && didBotWin() == false && didTheyTie() == false)
      System.out.println("Game is still on going...");
} else {
  System.out.println("Game has ended.");
  }
}



//Computer Plays (X values)
void GameBot() {
int BotNum = (int)(Math.random() * 9);

//Top Left (Position 0)
  if (BotNum == 0 && filledBoardConditional[0][0] == 0) {
  drawX(0,0);
  filledBoardConditional[0][0] = 1;
botWinConditional[0][0] = 1;
} else if (BotNum == 0 && filledBoardConditional[0][0] == 1) {
    GameBot();
  }


//Top Middle (Position 1)
  if (BotNum == 1 && filledBoardConditional[1][0] == 0) {
  drawX(1,0);
  filledBoardConditional[1][0] = 1;
botWinConditional[1][0] = 1;
} else if (BotNum == 1 && filledBoardConditional[1][0] == 1) {
    GameBot();
  }

//Top Right (Position 2)
  if (BotNum == 2 && filledBoardConditional[2][0] == 0) {
  drawX(2,0);
    filledBoardConditional[2][0] = 1;
    botWinConditional[2][0] = 1;
  } else if (BotNum == 2 && filledBoardConditional[2][0] == 1) {
    GameBot();
  }

//Middle Left (Position 3)
  if (BotNum == 3 && filledBoardConditional[0][1] == 0) {
  drawX(0,1);
  filledBoardConditional[0][1] = 1;
  botWinConditional[0][1] = 1;
  } else if (BotNum == 3 && filledBoardConditional[0][1] == 1) {
    GameBot();
  }

//Middle (Position 4)
  if (BotNum == 4 && filledBoardConditional[1][1] == 0) {
  drawX(1,1);
  filledBoardConditional[1][1] = 1;
  botWinConditional[1][1] = 1;
  } else if (BotNum == 4 && filledBoardConditional[1][1] == 1) {
    GameBot();
  }

//Middle Right (Position 5)
  if (BotNum == 5 && filledBoardConditional[2][1] == 0) {
  drawX(2,1);
  filledBoardConditional[2][1] = 1;
  botWinConditional[1][1] = 1;
  } else if (BotNum == 5 && filledBoardConditional[2][1] == 1) {
    GameBot();
  }

//Bottom Left (Position 6)
  if (BotNum == 6 && filledBoardConditional[0][2] == 0) {
  drawX(0,2);
  filledBoardConditional[0][2] = 1;
  botWinConditional[0][2] = 1;
  } else if (BotNum == 6 && filledBoardConditional[0][2] == 1) {
    GameBot();
  }

//Bottom Middle (Position 7)
 if (BotNum == 7 && filledBoardConditional[1][2] == 0) {
  drawX(1,2);
  filledBoardConditional[1][2] = 1;
  botWinConditional[1][2] = 1;
  } else if (BotNum == 7 && filledBoardConditional[1][2] == 1) {
    GameBot();
  }

//Bottom Right (Position 8)
 if (BotNum == 8 && filledBoardConditional[2][2] == 0) {
  drawX(2,2);
  filledBoardConditional[2][2] = 1;
  botWinConditional[2][2] = 1;
  } else if (BotNum == 8 && filledBoardConditional[2][2] == 1) {
    GameBot();
  }
}



//User inputs (O values)
void GamePlayer() {

//Top Left (position 0)
  if (key == '0' && filledBoardConditional[0][0] == 0) {
  draw0(0,0);
  filledBoardConditional[0][0] = 1;
  playerWinConditional[0][0] = 1;
  } else if (key == '0' && filledBoardConditional[0][0] == 1) {
    System.out.println("Cannot Play There Because Space Is Filled.");
    return;
  }

//Top Middle (position 1)
  if (key == '1' && filledBoardConditional[1][0] == 0) {
  draw0(1,0);
  filledBoardConditional[1][0] = 1;
  playerWinConditional[1][0] = 1;

  } else if (key == '1' && filledBoardConditional[1][0] == 1) {
    System.out.println("Cant Play There Because Space Is Filled.");
    return;
  }

//Top Right (position 2)
  if (key == '2' && filledBoardConditional[2][0] == 0) {
  draw0(2,0);
  filledBoardConditional[2][0] = 1;
  playerWinConditional[2][0] = 1;

} else if (key == '2' && filledBoardConditional[2][0] == 1) {
    System.out.println("Cant Play There Because Space Is Filled.");
    return;
  }

//Middle Left (Position 3)
  if (key == '3' && filledBoardConditional[0][1] == 0) {
  draw0(0,1);
  filledBoardConditional[0][1] = 1;
  playerWinConditional[0][1] = 1;
  } else if (key == '3' && filledBoardConditional[0][1] == 1) {
    System.out.println("Cant Play There Because Space Is Filled.");
    return;
  }

//Middle (position 4)
  if (key == '4' && filledBoardConditional[1][1] == 0) {
  draw0(1,1);
  filledBoardConditional[1][1] = 1;
  playerWinConditional[1][1] = 1;
  } else if (key == '4' && filledBoardConditional[1][1] == 1) {
    System.out.println("Cant Play There Because Space Is Filled.");
    return;
  }

//Middle Right (Position 5)
  if (key == '5' && filledBoardConditional[2][1] == 0) {
  draw0(2,1);
  filledBoardConditional[2][1] = 1;
  playerWinConditional[2][1] = 1;
  } else if (key == '5' && filledBoardConditional[2][1] == 1) {
    System.out.println("Cant Play There Because Space Is Filled.");
    return;
  }

//Bottom Left (Position 6)
  if (key == '6' && filledBoardConditional[0][2] == 0) {
  draw0(0,2);
  filledBoardConditional[0][2] = 1;
  playerWinConditional[0][2] = 1;
  } else if (key == '6' && filledBoardConditional[0][2] == 1) {
    System.out.println("Cant Play There Because Space Is Filled.");
    return;
  }

//Bottom Middle (position 7)
 if (key == '7' && filledBoardConditional[1][2] == 0) {
  draw0(1,2);
  filledBoardConditional[1][2] = 1;
  playerWinConditional[1][2] = 1;
  } else if (key == '7' && filledBoardConditional[1][2] == 1) {
    System.out.println("Cant Play There Because Space Is Filled.");
    return;
  }

//Bottom Right (Position 8)
 if (key == '8' && filledBoardConditional[2][2] == 0) {
  draw0(2,2);
  filledBoardConditional[2][2] = 1;
  playerWinConditional[2][2] = 1;
  } else if (key == '8' && filledBoardConditional[2][2] == 1) {
    System.out.println("Cant Play There Because Space Is Filled.");
    return;
  }

//Tells the player when they are pressing an invalid key
  if (key != '0' && key != '1' && key != '2' && key != '3' && key != '4' && key != '5' && key != '6' && key != '7' && key != '8') {
   System.out.println("Incorrect key pressed.");
  }
  else if(isBoardFilled() < 1 && didPlayerWin() == false && didBotWin() == false && didTheyTie() == false) {
    count++;
    GameBot();
  }
}


