(declare-fun limit_ack!791 () (_ BitVec 64))
(declare-fun epsabs_ack!790 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun a_ack!792 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!791)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!790)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (CF_log (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!792)
                                   ((_ to_fp 11 53) #x4043264061f2d8c9))))))
  (FPCHECK_FDIV_UNDERFLOW
    (fp.div roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x4018c121d66dae95))
    #x3f9a0e871839dd70)))

(check-sat)
(exit)
