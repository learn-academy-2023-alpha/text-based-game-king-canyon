# _..gggggppppp.._                       
# _.gd$$$$$$$$$$$$$$$$$$bp._                  
# .g$$$$$$P^^""j$$b""""^^T$$$$$$p.               
# .g$$$P^T$$b    d$P T;       ""^^T$$$p.            
# .d$$P^"  :$; `  :$;                "^T$$b.          
# .d$$P'      T$b.   T$b                  `T$$b.        
# d$$P'      .gg$$$$bpd$$$p.d$bpp.           `T$$b       
# d$$P      .d$$$$$$$$$$$$$$$$$$$$bp.           T$$b      
# d$$P      d$$$$$$$$$$$$$$$$$$$$$$$$$b.          T$$b     
# d$$P      d$$$$$$$$$$$$$$$$$$P^^T$$$$P            T$$b    
# d$$P    '-'T$$$$$$$$$$$$$$$$$$bggpd$$$$b.           T$$b   
# :$$$      .d$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$p._.g.     $$$;  
# $$$;     d$$$$$$$$$$$$$$$$$$$$$$$P^"^T$$$$P^^T$$$;    :$$$  
# :$$$     :$$$$$$$$$$$$$$:$$$$$$$$$_    "^T$bpd$$$$,     $$$; 
# $$$;     :$$$$$$$$$$$$$$bT$$$$$P^^T$p.    `T$$$$$$;     :$$$ 
# :$$$      :$$$$$$$$$$$$$$P `^^^'    "^T$p.    lb`TP       $$$;
# :$$$      $$$$$$$$$$$$$$$              `T$$p._;$b         $$$;
# $$$;      $$$$$$$$$$$$$$;                `T$$$$:Tb        :$$$
# $$$;      $$$$$$$$$$$$$$$                        Tb    _  :$$$
# :$$$     d$$$$$$$$$$$$$$$.                        $b.__Tb $$$;
# :$$$  .g$$$$$$$$$$$$$$$$$$$p...______...gp._      :$`^^^' $$$;
# $$$;  `^^'T$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$p.    Tb._, :$$$ 
# :$$$       T$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$b.   "^"  $$$; 
# $$$;       `$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$b      :$$$  
# :$$$        $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$;     $$$;  
# T$$b    _  :$$`$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$;   d$$P   
# T$$b   T$g$$; :$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$  d$$P    
# T$$b   `^^'  :$$ "^T$$$$$$$$$$$$$$$$$$$$$$$$$$$ d$$P     
# T$$b        $P     T$$$$$$$$$$$$$$$$$$$$$$$$$;d$$P      
# T$$b.      '       $$$$$$$$$$$$$$$$$$$$$$$$$$$$P       
# `T$$$p.   bug    d$$$$$$$$$$$$$$$$$$$$$$$$$$P'        
# `T$$$$p..__..g$$$$$$$$$$$$$$$$$$$$$$$$$$P'          
# "^$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$^"            
# "^T$$$$$$$$$$$$$$$$$$$$$$$$$$P^"               
#  """^^^T$$$$$$$$$$P^^^"""


# Intro message : In the begining there was darkness around the world city's were in chaos, the waffle house was closed (no waffles this time). Who will step up to help bring order and peace to the world once again. The Sun shines and a hero appears.

# Hero's mission: Slay the enemy in front of you, survive for another day. 

# Hero's message: you have been granted 3 potions, 1 revival leaf, 1 short sword, and 1 shield. 
# ------------------------------
# Game Status
player_stats = { health: 5, potions: 3, revival_leaf: 1, short_sword: 1, shield: 1}
enemy_stats = { health: 4}

def attack(input, enemy_stats)
    enemy_stats[:health] -= 1
    p "You punched the dragon! Their health is now #{enemy_stats[:health]}"
  end
  
  def enemy_attack(player_stats)
    player_stats[:health] -= 1
    p "The dragon punched you back! your health is now #{player_stats[:health]}"
  end
  
  def turn_logic(input, player_stats, enemy_stats)
    case input.downcase
    when "attack"
      attack(input, enemy_stats)
      enemy_attack(player_stats)
    when "check stats"
      p "You have #{player_stats[:health]} health and #{player_stats[:potions]} healing potions. Your enemy has #{enemy_stats[:health]} health left."
    else
      p "Invalid input."
    end
  end
  
  while enemy_stats[:health] > 0 || player_stats[:health] > 0
    if enemy_stats[:health] == 0 || player_stats[:health] == 0
        p "Game Over, The dragon has perished."
    return end 
        p "Pick an action"
    player_action = gets.chomp
    turn_logic(player_action, player_stats, enemy_stats)
  end
 


















# def turn_logic(input, player_stats, enemy_stats)
#     case input.downcase
#     when 'check stats'
#         p "you have #{player_stats [:health]} health and #{player_stats [:potions]} healing potions. your enemy has #{enemy_stats [:health]} health left"
#     when 'attack'
#         attack(input, enemy_stats)
#     else
#         p "invalid input"
#     end
# end


# def attack_logic(player_attack)
#     if player_attack == 'attack'
#         p "You swing your sword at the dragon. It loses health" 
#         p enemy_stats[:health] -1 
#     end
# end

# p attack_logic(enemy_stats[:health])














# --------------------------------------
# Attack Method
# def player_attack(enemy_stats)

#     enemy_stats[:health] -= 1 
#     # enemy_attack    
# end
# puts enemy_stats 
#     player_attack(enemy_stats)
# puts enemy_stats

# ----------------------------------------
# Enemies Attack
# def enemy_attack (player_stats, enemy_stats)
    
#     player_stats[:health] -= 1 
        
# end
# puts player_stats 
    
# player_attack(player_stats, enemy_stats)
    
# puts player_stats
turn_logic(player_action, player_stats, enemy_stats)