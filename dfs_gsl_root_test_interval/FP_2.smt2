(declare-fun x_hi_ack!26 () (_ BitVec 64))
(declare-fun x_lo_ack!27 () (_ BitVec 64))
(assert (not (fp.gt ((_ to_fp 11 53) x_lo_ack!27) ((_ to_fp 11 53) x_hi_ack!26))))

(check-sat)
(exit)
