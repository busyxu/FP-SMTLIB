(declare-fun a_ack!76 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) a_ack!76) ((_ to_fp 11 53) #xc000000000000000)))

(check-sat)
(exit)
