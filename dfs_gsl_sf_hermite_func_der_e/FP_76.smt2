(declare-fun a_ack!2005 () (_ BitVec 32))
(declare-fun b_ack!2004 () (_ BitVec 32))
(assert (not (bvslt a_ack!2005 #x00000000)))
(assert (not (bvslt b_ack!2004 #x00000000)))
(assert (not (= #x00000000 a_ack!2005)))
(assert (= #x00000001 a_ack!2005))

(check-sat)
(exit)
