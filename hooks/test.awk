BEGIN { x=0; y=1; FS="[<>]" }
$2 == "story" {printf "%d " , y}
(x == 1) && ($2 == "id type=\"integer\"") {
    printf $3 " "
}
(x == 1) && ($2 == "current_state") {printf $3 " "}
(x == 1) && ($2 == "name") {printf $3 "\n"}
$2 == "story" {x++;y++}
$2 == "/story" {x--}
$2 == "note" {x--}
$2 == "/note" {x++}

