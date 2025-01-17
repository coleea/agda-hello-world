{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE EmptyCase #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}

{-# OPTIONS_GHC -Wno-overlapping-patterns #-}

module MAlonzo.Code.Relation.Nullary.Reflects where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Sum.Base

-- Relation.Nullary.Reflects.Reflects
d_Reflects_16 a0 a1 a2 = ()
data T_Reflects_16 = C_of'696'_22 AgdaAny | C_of'8319'_26
-- Relation.Nullary.Reflects.of
d_of_30 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> Bool -> AgdaAny -> T_Reflects_16
d_of_30 ~v0 ~v1 v2 v3 = du_of_30 v2 v3
du_of_30 :: Bool -> AgdaAny -> T_Reflects_16
du_of_30 v0 v1
  = if coe v0 then coe C_of'696'_22 (coe v1) else coe C_of'8319'_26
-- Relation.Nullary.Reflects.invert
d_invert_38 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> Bool -> T_Reflects_16 -> AgdaAny
d_invert_38 ~v0 ~v1 ~v2 v3 = du_invert_38 v3
du_invert_38 :: T_Reflects_16 -> AgdaAny
du_invert_38 v0
  = case coe v0 of
      C_of'696'_22 v1 -> coe v1
      C_of'8319'_26 -> erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Reflects.T-reflects
d_T'45'reflects_46 :: Bool -> T_Reflects_16
d_T'45'reflects_46 v0
  = if coe v0
      then coe
             du_of_30 (coe v0) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      else coe du_of_30 (coe v0) (coe (\ v1 -> v1))
-- Relation.Nullary.Reflects.¬-reflects
d_'172''45'reflects_50 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> Bool -> T_Reflects_16 -> T_Reflects_16
d_'172''45'reflects_50 ~v0 ~v1 ~v2 v3 = du_'172''45'reflects_50 v3
du_'172''45'reflects_50 :: T_Reflects_16 -> T_Reflects_16
du_'172''45'reflects_50 v0
  = case coe v0 of
      C_of'696'_22 v1 -> coe C_of'8319'_26
      C_of'8319'_26 -> coe C_of'696'_22 erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Reflects._×-reflects_
d__'215''45'reflects__62 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Bool -> Bool -> T_Reflects_16 -> T_Reflects_16 -> T_Reflects_16
d__'215''45'reflects__62 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du__'215''45'reflects__62 v6 v7
du__'215''45'reflects__62 ::
  T_Reflects_16 -> T_Reflects_16 -> T_Reflects_16
du__'215''45'reflects__62 v0 v1
  = case coe v0 of
      C_of'696'_22 v2
        -> case coe v1 of
             C_of'696'_22 v3
               -> coe
                    C_of'696'_22
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v3))
             C_of'8319'_26 -> coe C_of'8319'_26
             _ -> MAlonzo.RTE.mazUnreachableError
      C_of'8319'_26 -> coe C_of'8319'_26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Reflects._⊎-reflects_
d__'8846''45'reflects__78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Bool -> Bool -> T_Reflects_16 -> T_Reflects_16 -> T_Reflects_16
d__'8846''45'reflects__78 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du__'8846''45'reflects__78 v6 v7
du__'8846''45'reflects__78 ::
  T_Reflects_16 -> T_Reflects_16 -> T_Reflects_16
du__'8846''45'reflects__78 v0 v1
  = case coe v0 of
      C_of'696'_22 v2
        -> coe
             C_of'696'_22
             (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v2))
      C_of'8319'_26
        -> case coe v1 of
             C_of'696'_22 v3
               -> coe
                    C_of'696'_22
                    (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v3))
             C_of'8319'_26 -> coe C_of'8319'_26
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Reflects._→-reflects_
d__'8594''45'reflects__94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Bool -> Bool -> T_Reflects_16 -> T_Reflects_16 -> T_Reflects_16
d__'8594''45'reflects__94 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du__'8594''45'reflects__94 v6 v7
du__'8594''45'reflects__94 ::
  T_Reflects_16 -> T_Reflects_16 -> T_Reflects_16
du__'8594''45'reflects__94 v0 v1
  = case coe v0 of
      C_of'696'_22 v2
        -> case coe v1 of
             C_of'696'_22 v3 -> coe C_of'696'_22 (coe (\ v4 -> v3))
             C_of'8319'_26 -> coe C_of'8319'_26
             _ -> MAlonzo.RTE.mazUnreachableError
      C_of'8319'_26
        -> coe
             C_of'696'_22
             (coe (\ v3 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Reflects.fromEquivalence
d_fromEquivalence_110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Bool ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> T_Reflects_16
d_fromEquivalence_110 ~v0 ~v1 v2 v3 ~v4
  = du_fromEquivalence_110 v2 v3
du_fromEquivalence_110 ::
  Bool -> (AgdaAny -> AgdaAny) -> T_Reflects_16
du_fromEquivalence_110 v0 v1
  = if coe v0
      then coe
             C_of'696'_22 (coe v1 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      else coe C_of'8319'_26
-- Relation.Nullary.Reflects.det
d_det_124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Bool ->
  Bool ->
  T_Reflects_16 ->
  T_Reflects_16 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_det_124 = erased
-- Relation.Nullary.Reflects.T-reflects-elim
d_T'45'reflects'45'elim_142 ::
  Bool ->
  Bool ->
  T_Reflects_16 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_T'45'reflects'45'elim_142 = erased
