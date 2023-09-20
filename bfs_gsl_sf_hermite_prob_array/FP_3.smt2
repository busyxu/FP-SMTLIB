(declare-fun a_ack!32 () (_ BitVec 32))
(assert (not (bvslt a_ack!32 #x00000000)))
(assert (not (= #x00000000 a_ack!32)))
(assert (= #x00000001 a_ack!32))

(check-sat)
(exit)
