(declare-fun limit_ack!71 () (_ BitVec 64))
(declare-fun epsabs_ack!70 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun a_ack!72 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!71)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!70)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (CF_log (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!72)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (FPCHECK_FDIV_UNDERFLOW
    (fp.div roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x3ff0000000000000))
    #x3fe0000000000000)))

(check-sat)
(exit)
