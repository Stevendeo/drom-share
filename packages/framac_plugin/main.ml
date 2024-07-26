!{header-ml}

(* If you delete or rename this file, you should add
   'src/!{name}/main.ml' to the 'skip' field in "drom.toml" *)

let help_msg = "output a warm welcome message to the user"
module Self = Plugin.Register (struct
    let name = "!{program-name}"
    let shortname = "!{name}"
    let help = help_msg
  end)

let run () =
  try
    let chan = open_out "hello.out" in
    Printf.fprintf chan "Hello, world!\n";
    flush chan;
    close_out chan
  with Sys_error _ as exc ->
    let msg = Printexc.to_string exc in
    Printf.eprintf "There was an error: %s\n" msg

let () = Boot.Main.extend run
