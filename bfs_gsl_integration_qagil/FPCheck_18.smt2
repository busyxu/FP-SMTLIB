(declare-fun limit_ack!110 () (_ BitVec 64))
(declare-fun epsabs_ack!109 () (_ BitVec 64))
(declare-fun b_ack!111 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!110)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!109)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!111)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (CF_log (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!111)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (FPCHECK_FDIV_ACCURACY
    (fp.div roundNearestTiesToEven
            (fp.div roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x3ff00000fffff7ff))
            ((_ to_fp 11 53) #x3fe0000000000000))
    #x3fe0000000000000)))

(check-sat)
(exit)
