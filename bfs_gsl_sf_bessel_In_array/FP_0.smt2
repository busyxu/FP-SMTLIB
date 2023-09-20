(declare-fun c_ack!9 () (_ BitVec 64))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!9)) ((_ to_fp 11 53) #x40862642fefa39ef)))

(check-sat)
(exit)
