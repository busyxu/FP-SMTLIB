(declare-fun a_ack!300 () (_ BitVec 64))
(declare-fun b_ack!299 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!300) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!300))
       (fp.abs ((_ to_fp 11 53) b_ack!299))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!300))
            (fp.abs ((_ to_fp 11 53) b_ack!299)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!299)))
                   ((_ to_fp 11 53) #x0010000000000000))))
  (fp.geq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!300))) a!1)))

(check-sat)
(exit)
