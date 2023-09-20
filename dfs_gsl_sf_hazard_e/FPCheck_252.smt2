(declare-fun a_ack!373 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!373) ((_ to_fp 11 53) #x4039000000000000)))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!373)
                                  ((_ to_fp 11 53) #x3ff6a09e667f3bcd))
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!373)
                                  ((_ to_fp 11 53) #x3ff6a09e667f3bcd)))
                  ((_ to_fp 11 53) #x3f9932cbb7f0cf30))))
  (not a!1)))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!373)
                    ((_ to_fp 11 53) #x3ff6a09e667f3bcd))
            ((_ to_fp 11 53) #x4020000000000000))))
(assert (fp.leq (fp.abs (fp.div roundNearestTiesToEven
                        ((_ to_fp 11 53) a_ack!373)
                        ((_ to_fp 11 53) #x3ff6a09e667f3bcd)))
        ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.abs (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!373)
                                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (FPCHECK_FMUL_OVERFLOW
    #x4000000000000000
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    a!2
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x4000000000000000))))))

(check-sat)
(exit)
