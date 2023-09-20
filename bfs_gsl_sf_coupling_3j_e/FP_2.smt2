(declare-fun a_ack!941 () (_ BitVec 32))
(declare-fun b_ack!939 () (_ BitVec 32))
(declare-fun c_ack!940 () (_ BitVec 32))
(assert (not (bvslt a_ack!941 #x00000000)))
(assert (not (bvslt b_ack!939 #x00000000)))
(assert (bvslt c_ack!940 #x00000000))

(check-sat)
(exit)
