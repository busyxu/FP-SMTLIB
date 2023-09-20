(declare-fun a_ack!11 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!11))
            ((_ to_fp 11 53) #x3e50000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!11))
        ((_ to_fp 11 53) #x3fd8000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4060000000000000)
          ((_ to_fp 11 53) a_ack!11))
  a_ack!11))

(check-sat)
(exit)
