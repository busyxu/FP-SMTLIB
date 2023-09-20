(declare-fun b_ack!99 () (_ BitVec 64))
(declare-fun alpha_ack!100 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!99) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) alpha_ack!100)
             ((_ to_fp 11 53) #xbff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha_ack!100)
                                   ((_ to_fp 11 53) #x0000000000000000))))))
  (FPCHECK_FINVALID_SQRT a!1 a!1)))

(check-sat)
(exit)
