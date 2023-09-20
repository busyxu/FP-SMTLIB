(declare-fun p_ack!12 () (_ BitVec 64))
(assert (fp.gt ((_ to_fp 11 53) p_ack!12) ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
