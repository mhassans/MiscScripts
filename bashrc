#when on tmux, export display before each command

#preexec
[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh

#tmux SSH display
if [ -n "$TMUX" ]; then                                                                               
  function refresh {                                                                                
    export $(tmux show-environment | grep "^DISPLAY")                                             
  }                                                                                                 
else                                                                                                  
  function refresh { 
    :
  }                                                                              
fi


function preexec {                                                                                    
    refresh
}
