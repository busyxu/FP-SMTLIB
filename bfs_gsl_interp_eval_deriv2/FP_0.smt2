(declare-fun xx_ack!0 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) xx_ack!0) ((_ to_fp 11 53) #xabababababababab)))

(check-sat)
(exit)
