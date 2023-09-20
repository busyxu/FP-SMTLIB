(declare-fun a_ack!387 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!387) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (fp.leq ((_ to_fp 11 53) a_ack!387) ((_ to_fp 11 53) #xc010000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4060000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!387)
                                   ((_ to_fp 11 53) a_ack!387))
                           ((_ to_fp 11 53) a_ack!387)))))
  (FPCHECK_FADD_OVERFLOW a!1 #x3ff0000000000000)))

(check-sat)
(exit)
