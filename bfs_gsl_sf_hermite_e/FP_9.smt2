(declare-fun a_ack!95 () (_ BitVec 32))
(declare-fun b_ack!94 () (_ BitVec 64))
(assert (not (bvslt a_ack!95 #x00000000)))
(assert (not (= #x00000000 a_ack!95)))
(assert (not (= #x00000001 a_ack!95)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!94) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) b_ack!94)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))

(check-sat)
(exit)
