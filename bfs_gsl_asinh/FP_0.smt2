(declare-fun a_ack!0 () (_ BitVec 64))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!0)) ((_ to_fp 11 53) #x4190000000000000)))

(check-sat)
(exit)
