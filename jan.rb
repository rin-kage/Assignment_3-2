
def janken
 puts "じゃんけん..." 
 puts "0(グー)1(チョキ)2(パー)3(戦わない)"

 player_hand = gets.to_i
 puts "ほい！"
 puts "-----------------"
 program_hand = rand(3)

 jankens = ["グー","チョキ","パー",]

 puts "あなたの手:#{jankens[player_hand]},相手の手:#{jankens[player_hand]}"
 puts "----------------"


  if (player_hand == 0 && program_hand ==0)||(player_hand == 1 && program_hand ==1)||(player_hand == 2 && program_hand ==2) #あいこ
   puts "あいこで..."
   false
  
  elsif (player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand ==0)#かち
   puts "あっちむいて..."
   true
  
  else  #負け
   puts "あっちむいて..." 
   true
  end
end


def acchi
　 puts "0(上)1(下)2(左)3(右)"
 select_number2 = gets.to_i
 random_nember2 = rand(3)
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
f1 = janken
 loop do
  f2 = acchi
 break if f2
 end 
if f1
 puts "あなたの勝ちです。おめでとう"
else
 puts "残念。あなたの負けです。"
end

