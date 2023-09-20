(declare-fun b_ack!12 () (_ BitVec 64))
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!12))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!12)) ((_ to_fp 11 53) #x40862e42fefa39ef)))
(assert (fp.eq (CF_exp b_ack!12) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
