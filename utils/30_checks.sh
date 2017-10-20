###############################################################################
# CHECK FUNCTIONS                                                             #
###############################################################################

#
# Test whether a command exists
# $1 = cmd to test
# Usage:
# if type_exists 'git'; then
#   some action
# else
#   some other action
# fi
#

type_exists() {
    if [ $(type -P $1) ]; then
        return 0
    fi
    return 1
}

#
# Test which OS the user runs
# $1 = OS to test
# Usage: if is_os 'darwin'; then
#

is_os() {
    if [[ "${OSTYPE}" == $1* ]]; then
        return 0
    fi
    return 1
}
