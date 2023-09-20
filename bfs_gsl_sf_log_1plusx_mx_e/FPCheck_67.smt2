(declare-fun a_ack!111 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!111) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!111))
            ((_ to_fp 11 53) #x3f48406003b2ae5a))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!111))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (let ((a!1 (fp.abs (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!111))))))
  (FPCHECK_FMUL_OVERFLOW
    #x3cb0000000000000
    (fp.add roundNearestTiesToEven a!1 (fp.abs ((_ to_fp 11 53) a_ack!111))))))

(check-sat)
(exit)
