(declare-fun xx_ack!0 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!0) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!0) ((_ to_fp 11 53) #xabababababababab))))

(check-sat)
(exit)
