(declare-fun a_ack!32 () (_ BitVec 32))
(declare-fun b_ack!31 () (_ BitVec 32))
(assert (not (bvslt a_ack!32 #x00000000)))
(assert (bvslt b_ack!31 a_ack!32))
(assert (bvsle #x00000000 (bvsub b_ack!31 a_ack!32)))

(check-sat)
(exit)
