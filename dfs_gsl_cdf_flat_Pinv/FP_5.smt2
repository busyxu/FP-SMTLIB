(declare-fun x_ack!49 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) x_ack!49) ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
