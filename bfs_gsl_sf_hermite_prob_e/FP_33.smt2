(declare-fun a_ack!360 () (_ BitVec 32))
(declare-fun b_ack!359 () (_ BitVec 64))
(assert (not (bvslt a_ack!360 #x00000000)))
(assert (not (= #x00000000 a_ack!360)))
(assert (not (= #x00000001 a_ack!360)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!359) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!359))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000001 a_ack!360))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!359))
            ((_ to_fp 11 53) #x7fefffffffffffff))))
(assert (bvslt #x00000002 a_ack!360))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!359)
                                   ((_ to_fp 11 53) b_ack!359))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x7fefffffffffffff)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!359))
       ((_ to_fp 11 53) #x7fdccccccccccccc)))

(check-sat)
(exit)
