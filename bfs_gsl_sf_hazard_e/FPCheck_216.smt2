(declare-fun a_ack!319 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!319) ((_ to_fp 11 53) #x4039000000000000)))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!319)
                                  ((_ to_fp 11 53) #x3ff6a09e667f3bcd))
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!319)
                                  ((_ to_fp 11 53) #x3ff6a09e667f3bcd)))
                  ((_ to_fp 11 53) #x3f9932cbb7f0cf30))))
  (not a!1)))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!319)
                    ((_ to_fp 11 53) #x3ff6a09e667f3bcd))
            ((_ to_fp 11 53) #x4020000000000000))))
(assert (let ((a!1 (fp.leq (fp.abs (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!319)
                                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (fp.leq (fp.abs (fp.div roundNearestTiesToEven
                        ((_ to_fp 11 53) a_ack!319)
                        ((_ to_fp 11 53) #x3ff6a09e667f3bcd)))
        ((_ to_fp 11 53) #x4014000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.abs (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!319)
                                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd)))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4000000000000000)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    a!1))
    #xbff0000000000000)))

(check-sat)
(exit)
