(declare-fun a_ack!4 () (_ BitVec 64))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4) ((_ to_fp 11 53) #xc086232bdd7abcd2))))

(check-sat)
(exit)
