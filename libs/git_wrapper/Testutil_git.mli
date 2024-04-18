(*
   Create a temporary git repo for testing purposes, cd into it,
   call a function, tear down the repo, and restore the original cwd.
   This is an extension of commons/Testutil_files

   At least one regular file must be specified for the operation to succeed
   e.g. [File ("empty", "")].

   User name and email are set locally for the repo using default values
   which can be overridden.

   'really_create_git_repo:false' allows for tests to not create a git repo but
   create temporary files and remove them when done. Default is true.

   'honor_gitignore:false' will cause gitignored files to be added anyway.
   Default is true.
*)
val with_git_repo :
  ?honor_gitignore:bool ->
  ?really_create_git_repo:bool ->
  ?user_email:string ->
  ?user_name:string ->
  Testutil_files.t list ->
  (Fpath.t -> 'a) ->
  'a