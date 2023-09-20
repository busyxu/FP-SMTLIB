(declare-fun a_ack!41 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!41))
            ((_ to_fp 11 53) #x3e50000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!41))
        ((_ to_fp 11 53) #x4010000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!41)
                                   ((_ to_fp 11 53) a_ack!41))
                           ((_ to_fp 11 53) #x4020000000000000))
                   ((_ to_fp 11 53) #x3fc0000000000000))))
  (FPCHECK_FMUL_UNDERFLOW #x4000000000000000 a!1)))

(check-sat)
(exit)
