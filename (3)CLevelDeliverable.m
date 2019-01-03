c = 20;
while c>0
    p1=input('Player 1, please enter the number of sticks you would like to remove. ');
    if c==1
        while p1 ~=1
        disp('Invalid input');
        p1 = input('Please choose the last stick to remove. You lose the game. ');
        end
    end
    
    if c==2
        while (p1 ~=1 && p1 ~=2) 
            disp('Invalid input');
            p1 = input('Please choose either 1 or 2 sticks. ');
        end
    end
    while p1~=1 && p1~=2 && p1~=3 || (c-p1)<0 
        disp('Invalid input');
        p1=input('Please choose between 1, 2, or 3 sticks ');
    end
    c = c-p1
    if c==0
     disp('Player 2 Wins')
     break
    end
    
    
    p2=input('Player 2, please enter the number of sticks you would like to remove. ');
    if c==1
        while p2 ~=1
        disp('Invalid input');
        p2 = input('Please choose the last stick to remove. You lose the game. ');
        end
    end
    if c==2
        while p2 ~=1 && p2 ~=2
            disp('Invalid input');
            p2 = input('Please choose either 1 or 2 sticks. ');
        end
    end
    while p2~=1 && p2~=2 && p2~=3  || (c-p2)<0 
        disp('Invalid input');
        p2=input('Please choose between 1, 2, or 3 sticks ');
    end
    c = c-p2
    if c==0
     disp('Player 1 Wins')
     break
    end
end  

