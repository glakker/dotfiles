function fish_prompt

	# hiba esetén $status != 0
	set -l statusz $status
	#set -l szin a3be8c

    if test -n "$SSH_TTY"
        echo -n (set_color brred)"$USER"(set_color white)'@'(set_color yellow)"$hostname"' '
    end
    #echo -n (set_color yellow)"$USER"(set_color white)'@'(set_color green)"$hostname"' '

    set -g fish_prompt_pwd_dir_length 0
    echo -n (set_color brblue)(prompt_pwd --dir-length=0)' '
    #echo -n (set_color blue)(prompt_pwd)' '

    set_color -o
    if fish_is_root_user
        echo -n (set_color red)'# '
    end
    #echo -n (set_color red)'❯'(set_color yellow)'❯'(set_color green)'❯ '

	# hiba esetén piros jel
	if test $statusz = 0 
		echo -n (set_color a3be8c)'❯ '
	else 
		echo -n (set_color red)'❯ '
	end
    set_color normal
end
