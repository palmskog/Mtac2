Require Import MetaCoq.MCImports.

Theorem andb3_exchange :
  forall b c d, andb (andb b c) d = andb (andb b d) c.
MProof.
  intros b c d. destruct b.
  - destruct c.
    { destruct d.
      - reflexivity.
      - reflexivity. }
    { destruct d.
      - reflexivity.
      - reflexivity. }
  - destruct c.
    { destruct d.
      - reflexivity.
      - reflexivity. }
    { destruct d.
      * reflexivity.
      * reflexivity. }
Qed.

Require Import MetaCoq.ImportedTactics.
Require Import Lists.List.
Import ListNotations.

Theorem plus_n_O : forall n:nat, n = n + 0.
MProof.
  intros n. induction n asp [ []; ["n'"; "IHn'"]].
(* FIX the order of subcases *)
  - (* n = S n' *) simpl. rewrite <- IHn'.
  reflexivity.
  + (* n = 0 *)    reflexivity.  Qed.