(declare-fun a_ack!21 () (_ BitVec 64))
(assert (fp.gt ((_ to_fp 11 53) a_ack!21) ((_ to_fp 11 53) #x41dfffffff800000)))

(check-sat)
(exit)
