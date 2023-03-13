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
enemy_stats = { health: 10}

p "pick an action"
player_action = gets.chomp

def turn_logic(input, player_stats, enemy_stats)
    if input.downcase == 'check stats'
        p "you have #{player_stats [:health]} health and #{player_stats [:potions]} healing potions. your enemy has #{enemy_stats [:health]} health left"
    else
        p "invalid input"
    end
end



# ----------------------------------------
# Enemies Attack
def enemy_attack (player_stats)
    
    player_stats[:health] -= 1 
        
end
puts player_stats 
    
enemy_attack(player_stats)
    
puts player_stats

# --------------------------------------
# Attack Method
def attack (input)

    enemy_stats[:health] -= 1 
    enemy_attack    
end
puts enemy_stats 
    attack(enemy_stats)
puts enemy_stats
# turn_logic(player_action, player_stats, enemy_stats)