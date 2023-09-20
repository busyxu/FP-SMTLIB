(declare-fun a_ack!552 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!552) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!552) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!552) ((_ to_fp 11 53) #x4000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!552))
                           ((_ to_fp 11 53) #x4006a09e667f3bcd))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x40862642fefa39ef)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!552) ((_ to_fp 11 53) #x4010000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x4030000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!552)
                  ((_ to_fp 11 53) #x4006a09e667f3bcd)))
  #x3ff0000000000000))

(check-sat)
(exit)
