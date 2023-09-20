(declare-fun a_ack!5 () (_ BitVec 64))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5) ((_ to_fp 11 53) #x4059000000000000))))

(check-sat)
(exit)
