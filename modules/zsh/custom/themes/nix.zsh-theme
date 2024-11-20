# PROMPT="%(?:%{$fg_bold[green]%}󱄅 adxthya$"\n":%{$fg_bold[green]%}󱄅 adxthya) %{$fg[cyan]%}%c%{$reset_color%}"
PROMPT="$fg_bold[blue]adxthya@$fg_bold[magenta]hope-nixos: %{$fg[cyan]%}%c%{$reset_color%}"
OMZ_NEW_LINE_FORMAT=$'\n%{$fg[blue]%}󱄅%{$reset_color%}'
PROMPT+=$OMZ_NEW_LINE_FORMAT
# Display the Git status (if available)
PROMPT+=' $(git_prompt_info)'

# Git prompt settings
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}%1{✗%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
