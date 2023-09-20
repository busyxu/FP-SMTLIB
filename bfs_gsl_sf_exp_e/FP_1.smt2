(declare-fun a_ack!5 () (_ BitVec 64))
(assert (fp.gt ((_ to_fp 11 53) a_ack!5) ((_ to_fp 11 53) #x40862e42fefa39ef)))

(check-sat)
(exit)
