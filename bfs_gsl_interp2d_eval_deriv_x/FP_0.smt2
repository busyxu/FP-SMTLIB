(declare-fun x1_ack!0 () (_ BitVec 64))
(declare-fun x0_ack!1 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1) ((_ to_fp 11 53) x1_ack!0))))

(check-sat)
(exit)
