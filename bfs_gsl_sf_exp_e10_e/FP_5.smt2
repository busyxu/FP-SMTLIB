(declare-fun a_ack!23 () (_ BitVec 64))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!23) ((_ to_fp 11 53) #x41dfffffff800000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!23) ((_ to_fp 11 53) #xc1dfffffffc00000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!23) ((_ to_fp 11 53) #x40862e42fefa39ef)))

(check-sat)
(exit)
