(declare-fun a_ack!217 () (_ BitVec 64))
(declare-fun b_ack!216 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!217))
            #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!216) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ed965fea53d6e41)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!217))))))
  (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!216)) a!1))))
(assert (not (= #x00000000
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!217)))))
(assert (not (= #x00000001
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!217)))))
(assert (not (= #x00000002
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!217)))))
(assert (fp.gt ((_ to_fp 11 53) b_ack!216)
       ((_ to_fp 11 53)
         roundNearestTiesToEven
         ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!217)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!216)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!217))))))
  (FPCHECK_FINVALID_LOG a!1 a!1)))

(check-sat)
(exit)
