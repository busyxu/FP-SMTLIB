(declare-fun a_ack!48 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!48) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!48) ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!48) ((_ to_fp 11 53) #x4010000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!48) ((_ to_fp 11 53) #x40894cc46ad56a15)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4028000000000000)
                                   ((_ to_fp 11 53) a_ack!48))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!48)
                                   ((_ to_fp 11 53) #x4010000000000000))))))
  (FPCHECK_FDIV_UNDERFLOW
    (fp.sub roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #xbff0000000000000))
            ((_ to_fp 11 53) #x3ff0000000000000))
    #x4000000000000000)))

(check-sat)
(exit)
