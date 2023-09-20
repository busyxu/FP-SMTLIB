(declare-fun a_ack!14 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!14)) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  ((_ to_fp 11 53) a_ack!14))
          ((_ to_fp 11 53) a_ack!14))
  #x3ff0000000000000))

(check-sat)
(exit)
