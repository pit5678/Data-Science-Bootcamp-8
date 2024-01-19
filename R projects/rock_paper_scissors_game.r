play_game <- function(){
    win <- 0
    lose <- 0
    tie <- 0
  print("let's play rock paper scissors!")
  
  while(T){
    
  computer_move <- sample(c("rock", "paper", "scissors"),1) 
  print(paste("WIN:", win, "LOSE:", lose, "TIE",tie))
  print("-------------------------------")
  print("Type rock, paper, scissors or [quit] to exit")

  user_input <- tolower(readLines("stdin", n=1))
  if(user_input == "rock" |
     user_input == "paper" |
     user_input == "scissors")
  {
      if(user_input == "rock" & computer_move == "paper"){
        print(paste("you chose:", user_input))
        print(paste("computer chose:", computer_move))
        print("you lose")
        lose <- lose + 1
      }else if(user_input == "rock" & computer_move == "scissors"){
        print(paste("you chose:", user_input))
        print(paste("computer chose:", computer_move))
        print("you win")
        win <- win + 1
      }else if(user_input == "paper" & computer_move == "rock"){
        print(paste("you chose:", user_input))
        print(paste("computer chose:", computer_move))
        print("you win")
        win <- win + 1
      }else if(user_input == "paper" & computer_move == "scissors"){
        print(paste("you chose:", user_input))
        print(paste("computer chose:", computer_move))
        print("you lose")
        lose <- lose + 1
      }else if(user_input == "scissors" & computer_move == "rock"){
        print(paste("you chose:", user_input))
        print(paste("computer chose:", computer_move))
        print("you lose")
        lose <- lose + 1
      }else if(user_input == "scissors" & computer_move == "paper"){
        print(paste("you chose:", user_input))
        print(paste("computer chose:", computer_move))
        print("you win")
        win <- win + 1
      }else{
        print(paste("you chose:", user_input))
        print(paste("computer chose:", computer_move))
        print("you tie")
        tie <- tie +1
      }
  }else if(user_input == "quit"){
    print("thanks for playing!")
    break
  }else{
    print("try again!")
}
}
print(paste("SCORE:", "WIN:",win, "LOSE:", lose, "TIE:", tie))
}
play_game()
