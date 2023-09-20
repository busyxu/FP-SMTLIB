(declare-fun x_hi_ack!36 () (_ BitVec 64))
(declare-fun x_lo_ack!37 () (_ BitVec 64))
(assert (fp.gt ((_ to_fp 11 53) x_lo_ack!37) ((_ to_fp 11 53) x_hi_ack!36)))

(check-sat)
(exit)
