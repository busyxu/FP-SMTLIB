(declare-fun a_ack!308 () (_ BitVec 64))
(declare-fun b_ack!307 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!308) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!308))
       (fp.abs ((_ to_fp 11 53) b_ack!307))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!308))
            (fp.abs ((_ to_fp 11 53) b_ack!307)))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!307))
       ((_ to_fp 11 53) #x7fefffffffffffff)))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) b_ack!307))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))

(check-sat)
(exit)
