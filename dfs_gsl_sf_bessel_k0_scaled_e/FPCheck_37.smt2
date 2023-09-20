(declare-fun a_ack!63 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!63) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!63) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!63) ((_ to_fp 11 53) #x4020000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #x4000000000000000
  (fp.sub roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4030000000000000)
                  ((_ to_fp 11 53) a_ack!63))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
