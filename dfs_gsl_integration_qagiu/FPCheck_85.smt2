(declare-fun limit_ack!667 () (_ BitVec 64))
(declare-fun epsabs_ack!666 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun a_ack!668 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!667)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!666)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (CF_log (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!668)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (FPCHECK_FDIV_OVERFLOW
    (fp.div roundNearestTiesToEven
            (fp.div roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x3fe0000000000000))
    #x3fe0000000000000)))

(check-sat)
(exit)
