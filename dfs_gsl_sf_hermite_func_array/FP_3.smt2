(declare-fun a_ack!45 () (_ BitVec 32))
(assert (not (bvslt a_ack!45 #x00000000)))
(assert (not (= #x00000000 a_ack!45)))
(assert (= #x00000001 a_ack!45))

(check-sat)
(exit)
