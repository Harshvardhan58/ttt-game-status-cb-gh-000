# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS=[
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]

def won?(board)
  #puts WIN_COMBINATIONS
  WIN_COMBINATIONS.each do |win_combination|
    if ((board[win_combination[0]]=="X" && board[win_combination[1]]=="X" && board[win_combination[2]]=="X") || (board[win_combination[0]]=="O" && board[win_combination[1]]=="O" && board[win_combination[2]]=="O"))
      return win_combination
    end
  end
  return false
end

def full?(board)
  position=0
  while(position<9) do
    if(!position_taken?(board,position))
      return false
    end
  end
  return true
end
