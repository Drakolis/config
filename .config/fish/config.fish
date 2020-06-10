set -x EDITOR vim
set -x VISUAL vim
set -x TERMINAL alacritty

alias ls "exa -a --group-directories-first"
alias lsl "exa -a -l --group-directories-first"

function cpyr
  cp $argv/$argv temp
  rm -rf $argv
  mv temp $argv
end
function fish_prompt
  powerline-shell --shell bare $status
end
function fish_greeting
  neofetch
end
function colortest
  for i in {0..255} ; do
    printf "\x1b[38;5;${i}m%3d " "${i}"
    if (( $i == 15 )) || (( $i > 15 )) && (( ($i-15) % 12 == 0 )); then
        echo;
    end
  end
end


# the default color
#set fish_color_normal
# the color for commands
set fish_color_command cyan
# the color for quoted blocks of text
set fish_color_quote brgreen
# the color for IO redirections
#set fish_color_redirection
# the color for process separators like ';' and '&'
set fish_color_end brwhite
# the color used to highlight potential errors
set fish_color_error red
# the color for regular command parameters
set fish_color_param green
# the color used for code comments
#set fish_color_comment
# the color used to highlight matching parenthesis
#set fish_color_match
# the color used when selecting text (in vi visual mode)
#set fish_color_selection
# used to highlight history search matches and the selected pager item (must be a background)
#set fish_color_search_match
# the color for parameter expansion operators like '*' and '~'
#set fish_color_operator
# the color used to highlight character escapes like '\n' and '\x70'
#set fish_color_escape
# the color used for the current working directory in the default prompt
#set fish_color_cwd
# the color used for autosuggestions
#set fish_color_autosuggestion
# the color used to print the current username in some of fish default prompts
#set fish_color_user
# the color used to print the current host system in some of fish default prompts
#set fish_color_host
# the color used to print the current host system in some of fish default prompts, if fish is running remotely (via ssh or similar)
#set fish_color_host_remote
# the color for the '^C' indicator on a canceled command
#set fish_color_cancel
# the color of the progress bar at the bottom left corner
#set fish_pager_color_progress
# the background color of a line
#set fish_pager_color_background
# the color of the prefix string, i.e. the string that is to be completed
#set fish_pager_color_prefix
# the color of the completion itself
#set fish_pager_color_completion
# the color of the completion description
#set fish_pager_color_description
# fish_pager_color_background of every second unselected completion. Defaults to fish_pager_color_background
#set fish_pager_color_secondary_background
#refix, fish_pager_color_prefix of every second unselected completion. Defaults to fish_pager_color_prefix
#set fish_pager_color_secondary_
# fish_pager_color_completion of every second unselected completion. Defaults to fish_pager_color_completion
#set fish_pager_color_secondary_completion
# fish_pager_color_description of every second unselected completion. Defaults to fish_pager_color_description
#set fish_pager_color_secondary_description
# fish_pager_color_background of the selected completion. Defaults to fish_color_search_match
#set fish_pager_color_selected_background
# fish_pager_color_prefix of the selected completion. Defaults to fish_pager_color_prefix
#set fish_pager_color_selected_prefix
# fish_pager_color_completion of the selected completion. Defaults to fish_pager_color_completion
#set fish_pager_color_selected_completion
# fish_pager_color_description of the selected completion. Defaults to fish_pager_color_description
#set fish_pager_color_selected_description

# Need to figure this out
#source ~/.nvm-fish/nvm.fish

