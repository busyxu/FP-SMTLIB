(declare-fun alpha1_ack!3982 () (_ BitVec 64))
(declare-fun beta_ack!3983 () (_ BitVec 64))
(declare-fun mu_ack!3984 () (_ BitVec 32))
(declare-fun nu_ack!3985 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!3982)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!3983)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 mu_ack!3984)))
(assert (= #x00000001 mu_ack!3984))
(assert (= #x00000000 nu_ack!3985))

(check-sat)
(exit)
