(declare-fun a_ack!22 () (_ BitVec 64))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!22) ((_ to_fp 11 53) #x41dfffffff800000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!22) ((_ to_fp 11 53) #xc1dfffffffc00000)))

(check-sat)
(exit)
