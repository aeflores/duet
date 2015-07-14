open OUnit

let suite = "Main" >::: [
    Test_scalar.suite;
    Test_syntax.suite;
    Test_smt.suite;
]

let _ =
  Printexc.record_backtrace true;
  Printf.printf "Running ark test suite";
  ignore (run_test_tt_main suite)