PROMPT=$'%{$fg[yellow]%}| %{$fg[yellow]%}%n %{$fg[cyan]%}@ %{$fg[yellow]%}%m %{$fg[yellow]%}| %{$fg[cyan]%}%T (zsh) %{$fg[yellow]%}| %{$reset_color%}%{$fg[blue]%}%/%{$reset_color%} $(git_prompt_info)$(bzr_prompt_info)
%{$fg_bold[green]%}>%{$reset_color%} '

PROMPT2="%{$fg_blod[green]%}%_> %{$reset_color%}"

GIT_CB=" ✈ git::"
ZSH_THEME_SCM_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_PREFIX=$ZSH_THEME_SCM_PROMPT_PREFIX$GIT_CB
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg_bold[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg_bold[green]%}✔%{$reset_color%}"
