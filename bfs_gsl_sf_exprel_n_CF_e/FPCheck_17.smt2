(declare-fun a_ack!67 () (_ BitVec 64))
(declare-fun b_ack!66 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!67))
            #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!66) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ed965fea53d6e41)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!67))))))
  (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!66)) a!1)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000002
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!67))))))
  (FPCHECK_FADD_UNDERFLOW
    #x3ff0000000000000
    (fp.div roundNearestTiesToEven ((_ to_fp 11 53) b_ack!66) a!1))))

(check-sat)
(exit)
