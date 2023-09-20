(declare-fun a_ack!85 () (_ BitVec 32))
(declare-fun b_ack!84 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!85 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!84) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!85)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!84) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!84) ((_ to_fp 11 53) #x1fff5de25335c4ee))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!84)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!84))))))
  (FPCHECK_FMUL_OVERFLOW #x3cc0000000000000 (fp.abs a!1))))

(check-sat)
(exit)
