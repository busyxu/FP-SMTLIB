(declare-fun a_ack!171 () (_ BitVec 64))
(declare-fun b_ack!170 () (_ BitVec 64))
(assert (not (bvslt ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!171))
            #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!170) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ed965fea53d6e41)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!171))))))
  (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!170)) a!1))))
(assert (not (= #x00000000
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!171)))))
(assert (= #x00000001 ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!171))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!170) ((_ to_fp 11 53) #xc086232bdd7abcd2)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!170) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
