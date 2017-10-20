###############################################################################
# CONFIRMATIN SEEKING                                                         #
###############################################################################

#
# USAGE FOR SEEKING CONFIRMATION
# seek_confirmation "Ask a question"
# Credt: https://github.com/kevva/dotfiles
#
# if is_confirmed; then
#   some action
# else
#   some other action
# fi
#

seek_confirmation() {
    printf "\n${bold}$@${reset}"
    read -p " (y/n) " -n 1
    printf "\n"
}

# underlined
seek_confirmation_head() {
    printf "\n${underline}${bold}$@${reset}"
    read -p "${underline}${bold} (y/n)${reset} " -n 1
    printf "\n"
}

# Test whether the result of an 'ask' is a confirmation
is_confirmed() {
    if [[ "$REPLY" =~ ^[Yy]$ ]]; then
        return 0
    fi
    return 1
}
