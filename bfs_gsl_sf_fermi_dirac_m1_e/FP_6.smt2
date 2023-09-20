(declare-fun a_ack!43 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!43) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!43) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
