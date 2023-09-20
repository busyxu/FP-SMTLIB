(declare-fun l0_ack!1 () (_ BitVec 64))
(declare-fun u0_ack!0 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) u0_ack!0) ((_ to_fp 11 53) l0_ack!1))))

(check-sat)
(exit)
