(***********************************************************************)
(*                                                                     *)
(*                          HEVEA                                      *)
(*                                                                     *)
(*  Luc Maranget, projet PARA, INRIA Rocquencourt                      *)
(*                                                                     *)
(*  Copyright 1998 Institut National de Recherche en Informatique et   *)
(*  Automatique.  Distributed only by permission.                      *)
(*                                                                     *)
(***********************************************************************)

module type T =
  sig
    val register : int -> string -> string -> string -> unit
    val flush : (string -> unit)  -> string -> string -> unit
    val some : bool ref
  end

module MakeFoot (Dest : OutManager.S) : T
