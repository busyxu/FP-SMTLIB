(declare-fun a_ack!177 () (_ BitVec 64))
(declare-fun b_ack!176 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!177))
            #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!176) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ed965fea53d6e41)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!177))))))
  (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!176)) a!1))))
(assert (not (= #x00000000
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!177)))))
(assert (not (= #x00000001
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!177)))))
(assert (= #x00000002 ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!177))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!176) ((_ to_fp 11 53) #xc086232bdd7abcd2)))
(assert (FPCHECK_FDIV_OVERFLOW #xc000000000000000 b_ack!176))

(check-sat)
(exit)
