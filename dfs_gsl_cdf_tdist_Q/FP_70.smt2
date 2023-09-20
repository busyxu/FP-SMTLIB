(declare-fun mu_ack!594 () (_ BitVec 64))
(assert (fp.gt ((_ to_fp 11 53) mu_ack!594) ((_ to_fp 11 53) #x403e000000000000)))

(check-sat)
(exit)
