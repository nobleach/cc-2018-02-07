let get_likes likers =
    match likers with
    | [] -> Printf.sprintf "No one has liked your crap.\n"
    | [hd] -> Printf.sprintf "%s likes your crap.\n" hd
    | [hd1; hd2; _] -> Printf.sprintf "%s and %s as well as one other, like your crap.\n" hd1 hd2
    | hd1 :: hd2 :: _ :: tl -> Printf.sprintf "%s and %s as well as %s others, like your crap.\n" hd1 hd2 (string_of_int (List.length tl + 1))
    | hd1 :: hd2 :: tl -> Printf.sprintf "%s and %s like your crap.\n" hd1 hd2;;


(* let likers = ["Griff"];;

let s = get_likes likers;;
Printf.printf "%s" s;; *)
