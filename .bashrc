# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# colors
default=$(tput sgr0)
blue=$(tput setaf 4)
purple=$(tput setaf 5)
white=$(tput setaf 7)

# timer for prompt
function timer_now {
  date +%s%N
}

function timer_start {
  timer_start=${timer_start:-$(timer_now)}
}

function timer_stop {
  local delta_us=$((($(timer_now) - $timer_start) / 1000))
  local us=$((delta_us % 1000))
  local ms=$(((delta_us / 1000) % 1000))
  local s=$(((delta_us / 1000000) % 60))
  local m=$(((delta_us / 60000000) % 60))
  local h=$((delta_us / 3600000000))
  # Goal: always show around 3 digits of accuracy
  if ((h > 0)); then timer_show=${h}h${m}m
  elif ((m > 0)); then timer_show=${m}m${s}s
  elif ((s >= 10)); then timer_show=${s}.$((ms / 100))s
  elif ((s > 0)); then timer_show=${s}.$(printf %03d $ms)s
  elif ((ms >= 100)); then timer_show=${ms}ms
  elif ((ms > 0)); then timer_show=${ms}.$((us / 100))ms
  else timer_show=${us}us
  fi
  unset timer_start
}

trap 'timer_start' DEBUG
PROMPT_COMMAND=timer_stop

# normal prompt
PS1='(${blue}${timer_show}${white}) ${purple}\W${default}\$ '
# prompt on other machine
#PS1='(${blue}${timer_show}${white}) ${purple}\u@\h:\W${default}\$ '

export EDITOR=/usr/bin/vim

# read bash aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
