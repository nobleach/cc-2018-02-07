open OUnit2;;

(* Test Fixture *)
let empty_likers = [];;
let one_like = ["Jim"];;
let two_likes = ["Jim"; "Angela"];;
let three_likes = ["Jim"; "Angela"; "Nathan"];;
let four_likes = ["Jim"; "Angela"; "Nathan"; "Naomi"];;
let test_fixture = "Likes" >:::
[
    "0 likes">::
        (fun test_ctxt ->
            assert_equal
            ~msg:"Value: "
            ~printer: (fun tst_results -> tst_results)
            "No one has liked your crap.\n"
            (Likes.get_likes empty_likers));

    "1 like">::
        (fun test_ctxt ->
            assert_equal
            ~msg:"Value: "
            ~printer: (fun tst_results -> tst_results)
            "Jim likes your crap.\n"
            (Likes.get_likes one_like));

    "2 likes">::
        (fun test_ctxt ->
            assert_equal
            ~msg:"Value: "
            ~printer: (fun tst_results -> tst_results)
            "Jim and Angela like your crap.\n"
            (Likes.get_likes two_likes));

    "3 likes">::
        (fun test_ctxt ->
            assert_equal
            ~msg:"Value: "
            ~printer: (fun tst_results -> tst_results)
            "Jim and Angela as well as one other, like your crap.\n"
            (Likes.get_likes three_likes));

    "4 likes">::
        (fun test_ctxt ->
            assert_equal
            ~msg:"Value: "
            ~printer: (fun tst_results -> tst_results)
            "Jim and Angela as well as 2 others, like your crap.\n"
            (Likes.get_likes four_likes));
]

(* Test Runner; ~verbose:true gives info on succ tests *)
let _ = run_test_tt_main test_fixture

(* Run with: ocamlfind ocamlc -o test -package oUnit -linkpkg -g likes.ml likesTest.ml *)
