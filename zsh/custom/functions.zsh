

function mkcd() {
  mkdir -p "$@" && cd "$_" || exit;
}
