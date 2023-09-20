(declare-fun a_ack!73 () (_ BitVec 64))
(declare-fun b_ack!72 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!73))
            #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!72) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ed965fea53d6e41)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!73))))))
  (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!72)) a!1)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!73)))))
      (a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000002
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!73))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.div roundNearestTiesToEven ((_ to_fp 11 53) b_ack!72) a!1)
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) #x3ff0000000000000)
            (fp.div roundNearestTiesToEven ((_ to_fp 11 53) b_ack!72) a!2)))))

(check-sat)
(exit)
