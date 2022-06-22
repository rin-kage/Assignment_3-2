
def janken_game
 puts "じゃんけん..." 
 puts "0(グー)1(チョキ)2(パー)3(戦わない)"
 
 player_hand = gets.to_i
 puts player_hand
 
 puts "ほい！"
 puts "--------------"
 
 if player_hand == 3
  puts"ゲームを終了します"
 elsif player_hand > 3
  puts"正しい値を入力してください"
  janken_game
 end  
 
 program_hand = rand(3)
 jankens = ["グー","チョキ","パー"]
 
 puts "---------------"
 puts "あなたの手:#{jankens[player_hand]}"
 puts "相手の手:#{jankens[program_hand]}"
 puts "----------------"
 
 $win = "win"
 
  if player_hand == program_hand #あいこ
   puts "あいこで..."
   janken_game
  elsif (player_hand = 0 && program_hand = 1)||(player_hand = 1 && program_hand = 2)||(player_hand = 2 && program_hand = 0)#かち
   $win = "win"
   acchi_hoi
  elsif  (player_hand = 0 && program_hand ==2)||(player_hand == 1 && program_hand == 0)||(player_hand == 2 && program_hand == 1)
   $win = "lose"
   acchi_hoi
  end
  
end


def acchi_hoi
 puts "あっちむいて..."
 puts "0(上)1(下)2(左)3(右)"
 select_direction = gets.to_i
 puts select_direction
 puts "ほい！"
 puts "--------------------"
  
 random_direction = rand(4)
 directions = ["上","下","左","右"]
  
 puts "あなた：#{directions[select_direction]}"
 puts "相手:#{directions[random_direction]}"
 puts "---------------------"
 
 if (select_direction == random_direction) && ($win == "win")
  puts "あなたの勝ちです"
 elsif (select_direction == random_direction) && ($win == "lose")
  puts "あなたの負けです"
 else
  janken_game
 end 
end 

janken_game



