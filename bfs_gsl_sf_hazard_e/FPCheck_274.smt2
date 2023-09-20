(declare-fun a_ack!389 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!389) ((_ to_fp 11 53) #x4039000000000000)))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!389)
                                  ((_ to_fp 11 53) #x3ff6a09e667f3bcd))
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!389)
                                  ((_ to_fp 11 53) #x3ff6a09e667f3bcd)))
                  ((_ to_fp 11 53) #x3f9932cbb7f0cf30))))
  (not a!1)))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!389)
                    ((_ to_fp 11 53) #x3ff6a09e667f3bcd))
            ((_ to_fp 11 53) #x4020000000000000))))
(assert (let ((a!1 (fp.leq (fp.abs (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!389)
                                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.leq (fp.abs (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!389)
                                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd)))
                   ((_ to_fp 11 53) #x4014000000000000))))
  (not a!1)))
(assert (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!389)
                       ((_ to_fp 11 53) #x3ff6a09e667f3bcd)))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.abs (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!389)
                                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd))))))
  (FPCHECK_FDIV_ACCURACY
    (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x402e000000000000))
    #x4014000000000000)))

(check-sat)
(exit)
