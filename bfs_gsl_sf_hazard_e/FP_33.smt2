(declare-fun a_ack!288 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) a_ack!288) ((_ to_fp 11 53) #x4039000000000000)))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!288)
                                  ((_ to_fp 11 53) #x3ff6a09e667f3bcd))
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!288)
                                  ((_ to_fp 11 53) #x3ff6a09e667f3bcd)))
                  ((_ to_fp 11 53) #x3f9932cbb7f0cf30))))
  (not a!1)))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!288)
                    ((_ to_fp 11 53) #x3ff6a09e667f3bcd))
            ((_ to_fp 11 53) #x4020000000000000))))
(assert (fp.leq (fp.abs (fp.div roundNearestTiesToEven
                        ((_ to_fp 11 53) a_ack!288)
                        ((_ to_fp 11 53) #x3ff6a09e667f3bcd)))
        ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
