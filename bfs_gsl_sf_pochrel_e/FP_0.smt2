(declare-fun a_ack!15 () (_ BitVec 64))
(declare-fun b_ack!14 () (_ BitVec 64))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!14))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fb999999999999a)
                          (fp.abs ((_ to_fp 11 53) a_ack!15))))))
  (not a!1)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!15))
            ((_ to_fp 11 53) #x4000000000000000))))

(check-sat)
(exit)
