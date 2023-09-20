(declare-fun x1_ack!788 () (_ BitVec 64))
(declare-fun x0_ack!796 () (_ BitVec 64))
(declare-fun y0_ack!789 () (_ BitVec 64))
(declare-fun x_ack!794 () (_ BitVec 64))
(declare-fun y_ack!795 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z2_ack!792 () (_ BitVec 64))
(declare-fun z1_ack!791 () (_ BitVec 64))
(declare-fun z3_ack!793 () (_ BitVec 64))
(declare-fun z0_ack!790 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!796) ((_ to_fp 11 53) x1_ack!788))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!789) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!794) ((_ to_fp 11 53) x0_ack!796))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!794) ((_ to_fp 11 53) x1_ack!788))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!795) ((_ to_fp 11 53) y0_ack!789))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!795) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!794) ((_ to_fp 11 53) x0_ack!796))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!794) ((_ to_fp 11 53) x1_ack!788))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!795) ((_ to_fp 11 53) y0_ack!789))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!795) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!788)
                       ((_ to_fp 11 53) x0_ack!796))
               ((_ to_fp 11 53) x0_ack!796))
       ((_ to_fp 11 53) x1_ack!788)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!788)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!788)
                       ((_ to_fp 11 53) x0_ack!796)))
       ((_ to_fp 11 53) x0_ack!796)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!789))
               ((_ to_fp 11 53) y0_ack!789))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!789)))
       ((_ to_fp 11 53) y0_ack!789)))
(assert (FPCHECK_FADD_ACCURACY
  (fp.sub roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) z0_ack!790)
                  ((_ to_fp 11 53) z3_ack!793))
          ((_ to_fp 11 53) z1_ack!791))
  z2_ack!792))

(check-sat)
(exit)
