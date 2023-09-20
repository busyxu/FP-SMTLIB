(declare-fun a_ack!42 () (_ BitVec 64))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!42)) ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
