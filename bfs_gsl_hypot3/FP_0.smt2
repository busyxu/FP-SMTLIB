(declare-fun c_ack!1 () (_ BitVec 64))
(declare-fun b_ack!0 () (_ BitVec 64))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!0)) (fp.abs ((_ to_fp 11 53) c_ack!1))))

(check-sat)
(exit)
