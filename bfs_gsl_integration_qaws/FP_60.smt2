(declare-fun alpha1_ack!2013 () (_ BitVec 64))
(declare-fun beta_ack!2014 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!2013)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) beta_ack!2014) ((_ to_fp 11 53) #xbff0000000000000)))

(check-sat)
(exit)
