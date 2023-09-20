(declare-fun a_ack!359 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) a_ack!359) ((_ to_fp 11 53) #xc086232bdd7abcd2)))

(check-sat)
(exit)
