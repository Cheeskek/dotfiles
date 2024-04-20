function x-exec
echo $argv > ~/.xinitrc.tmp && XINITRC=~/.xinitrc.tmp startx 
end
