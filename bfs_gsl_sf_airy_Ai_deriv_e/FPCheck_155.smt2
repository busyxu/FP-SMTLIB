(declare-fun a_ack!410 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!410) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (fp.leq ((_ to_fp 11 53) a_ack!410) ((_ to_fp 11 53) #xc010000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4060000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!410)
                                   ((_ to_fp 11 53) a_ack!410))
                           ((_ to_fp 11 53) a_ack!410)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (FPCHECK_FMUL_ACCURACY
    #x4000000000000000
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    a!2
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x4000000000000000))))))

(check-sat)
(exit)
