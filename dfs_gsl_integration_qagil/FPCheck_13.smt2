(declare-fun limit_ack!107 () (_ BitVec 64))
(declare-fun epsabs_ack!105 () (_ BitVec 64))
(declare-fun epsrel_ack!106 () (_ BitVec 64))
(declare-fun b_ack!108 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!107)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!105) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!106)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!106)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (let ((a!1 (fp.leq (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!108)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (CF_log (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!108)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (FPCHECK_FDIV_OVERFLOW
    (fp.div roundNearestTiesToEven
            (fp.div roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x7ff8000000000001))
            ((_ to_fp 11 53) #x3fe0000000000000))
    #x3fe0000000000000)))

(check-sat)
(exit)
