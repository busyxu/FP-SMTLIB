(declare-fun xx_ack!306 () (_ BitVec 64))
(declare-fun x0_ack!307 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!306) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!306) ((_ to_fp 11 53) #xabababababababab))))
(assert (fp.lt ((_ to_fp 11 53) xx_ack!306) ((_ to_fp 11 53) x0_ack!307)))

(check-sat)
(exit)
