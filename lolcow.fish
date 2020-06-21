function lolcow --description 'input | Random `cowsay` | lolcat'
set -l cow_options (cowsay -l | tail -n+2 | string split ' ')
set -l idx (random 1 (count $cow_options))
if count $argv > /dev/null 
echo $argv | cowsay -f $cow_options[$idx] | lolcat
else
fortune | cowsay -f $cow_options[$idx] | lolcat 
end
end
