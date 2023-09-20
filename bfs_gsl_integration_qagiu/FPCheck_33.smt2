(declare-fun limit_ack!196 () (_ BitVec 64))
(declare-fun epsabs_ack!195 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun a_ack!197 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!196)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!195)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (CF_log (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!197)
                                   ((_ to_fp 11 53) #x4043264061f2d8c9))))))
  (FPCHECK_FDIV_ACCURACY a!1 #x4018c121d66dae95)))

(check-sat)
(exit)
