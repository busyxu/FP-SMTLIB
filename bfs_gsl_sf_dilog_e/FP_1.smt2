(declare-fun a_ack!5 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
