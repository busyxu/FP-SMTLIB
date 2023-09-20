(declare-fun a_ack!20 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!20))
            ((_ to_fp 11 53) #x3e50000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!20))
        ((_ to_fp 11 53) #x4010000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!20)
                  ((_ to_fp 11 53) a_ack!20))
          ((_ to_fp 11 53) #x4020000000000000))
  #x3fc0000000000000))

(check-sat)
(exit)
