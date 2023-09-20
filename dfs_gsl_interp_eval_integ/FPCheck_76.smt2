(declare-fun x1_ack!792 () (_ BitVec 64))
(declare-fun x0_ack!796 () (_ BitVec 64))
(declare-fun x2_ack!793 () (_ BitVec 64))
(declare-fun b_ack!795 () (_ BitVec 64))
(declare-fun a_ack!794 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!796) ((_ to_fp 11 53) x1_ack!792)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!792) ((_ to_fp 11 53) x2_ack!793)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!792)
                       ((_ to_fp 11 53) x0_ack!796))
               ((_ to_fp 11 53) x0_ack!796))
       ((_ to_fp 11 53) x1_ack!792)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!792)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!792)
                       ((_ to_fp 11 53) x0_ack!796)))
       ((_ to_fp 11 53) x0_ack!796)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!793)
                       ((_ to_fp 11 53) x1_ack!792))
               ((_ to_fp 11 53) x1_ack!792))
       ((_ to_fp 11 53) x2_ack!793)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!793)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!793)
                       ((_ to_fp 11 53) x1_ack!792)))
       ((_ to_fp 11 53) x1_ack!792)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!792)
                    ((_ to_fp 11 53) x0_ack!796))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!793)
                    ((_ to_fp 11 53) x1_ack!792))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!794) ((_ to_fp 11 53) b_ack!795))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!794) ((_ to_fp 11 53) x0_ack!796))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!795) ((_ to_fp 11 53) x2_ack!793))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!794) ((_ to_fp 11 53) b_ack!795))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!794) ((_ to_fp 11 53) x0_ack!796))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!794) ((_ to_fp 11 53) x1_ack!792))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!795) ((_ to_fp 11 53) x0_ack!796))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!795) ((_ to_fp 11 53) x1_ack!792)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!792) ((_ to_fp 11 53) b_ack!795))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!792)
                    ((_ to_fp 11 53) x0_ack!796))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!792)
          ((_ to_fp 11 53) x0_ack!796))))

(check-sat)
(exit)
