(declare-fun a_ack!47 () (_ BitVec 64))
(declare-fun b_ack!46 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!47))
            #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!46) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ed965fea53d6e41)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!47))))))
  (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!46)) a!1)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000002
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!47))))))
  (FPCHECK_FDIV_OVERFLOW b_ack!46 a!1)))

(check-sat)
(exit)
