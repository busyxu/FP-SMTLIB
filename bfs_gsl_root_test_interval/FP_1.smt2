(declare-fun x_hi_ack!24 () (_ BitVec 64))
(declare-fun x_lo_ack!25 () (_ BitVec 64))
(assert (not (fp.gt ((_ to_fp 11 53) x_lo_ack!25) ((_ to_fp 11 53) x_hi_ack!24))))

(check-sat)
(exit)
