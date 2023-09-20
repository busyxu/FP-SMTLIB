(declare-fun alpha1_ack!2012 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) alpha1_ack!2012) ((_ to_fp 11 53) #xbff0000000000000)))

(check-sat)
(exit)
