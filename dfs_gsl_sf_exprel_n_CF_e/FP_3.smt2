(declare-fun a_ack!29 () (_ BitVec 64))
(declare-fun b_ack!28 () (_ BitVec 64))
(assert (not (bvslt ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!29))
            #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!28) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ed965fea53d6e41)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!29))))))
  (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!28)) a!1))))
(assert (not (= #x00000000
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!29)))))

(check-sat)
(exit)
