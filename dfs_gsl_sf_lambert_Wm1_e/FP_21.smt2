(declare-fun a_ack!161 () (_ BitVec 64))
(assert (fp.gt ((_ to_fp 11 53) a_ack!161) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
