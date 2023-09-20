(declare-fun a_ack!46 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_pow ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!46) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!46) ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!46) ((_ to_fp 11 53) #x4010000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (CF_pow a_ack!46 #x3fd5555555555555))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (CF_pow a_ack!46 #x3fd5555555555555)
                                   (CF_pow a_ack!46 #x3fd5555555555555))
                           (fp.mul roundNearestTiesToEven
                                   (CF_pow a_ack!46 #x3fd5555555555555)
                                   (CF_pow a_ack!46 #x3fd5555555555555))))))
  (FPCHECK_FMUL_ACCURACY #x3ce0000000000000 (fp.abs a!1))))

(check-sat)
(exit)
