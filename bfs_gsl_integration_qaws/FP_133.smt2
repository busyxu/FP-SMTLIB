(declare-fun alpha1_ack!4373 () (_ BitVec 64))
(declare-fun beta_ack!4374 () (_ BitVec 64))
(declare-fun mu_ack!4375 () (_ BitVec 32))
(declare-fun nu_ack!4376 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!4373)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!4374)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (= #x00000000 mu_ack!4375))
(assert (not (= #x00000000 nu_ack!4376)))
(assert (= #x00000001 nu_ack!4376))

(check-sat)
(exit)
