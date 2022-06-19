
def janken
 puts "じゃんけん..." 
 puts "0(グー)1(チョキ)2(パー)3(戦わない)"

 player_hand = gets.to_i
 program_hand = rand (3)
 

 
 jankens = ["グー","チョキ","パー",]

 puts "あなたの手:#{jankens[player_hand]},相手の手:#{jankens[program_hand]}"
 puts "----------------"

  if (player_hand == 0 && program_hand ==0)||(player_hand == 1 && program_hand ==1)||(player_hand == 2 && program_hand ==2) #あいこ
   puts "あいこで..."
   return true
  
  elsif (player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand ==0)#かち
   puts "あっちむいて..."
   return false
  
  else  #負け
   puts "あっちむいて..." 
   return false
  end
end

next_game = true
while next_game
 next_game = janken
end


def acchi
 
　 puts "0(上)1(下)2(左)3(右)"
　 
 select_number2 = gets.to_i
 random_nember2 = rand (3)
 directions = ["上","下","左","右"]
 
 　puts "ほい！"
 　puts "あなた：#{directions[select_number2]} 相手：#{directions[random_nember2]}"
   puts "------------------------"
   
 if select_number2 == random_nember2
  true
 else
  false
 end 
end 


