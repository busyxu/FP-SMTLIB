(declare-fun P_ack!19 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) P_ack!19) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) P_ack!19) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq (fp.abs (fp.sub roundNearestTiesToEven
                        ((_ to_fp 11 53) P_ack!19)
                        ((_ to_fp 11 53) #x3fe0000000000000)))
        ((_ to_fp 11 53) #x3fdb333333333333)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) P_ack!19)
          ((_ to_fp 11 53) #x3fe0000000000000))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) P_ack!19)
          ((_ to_fp 11 53) #x3fe0000000000000))))

(check-sat)
(exit)
