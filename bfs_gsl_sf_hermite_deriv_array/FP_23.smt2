(declare-fun b_ack!190 () (_ BitVec 32))
(declare-fun a_ack!191 () (_ BitVec 32))
(assert (not (bvslt b_ack!190 #x00000000)))
(assert (not (bvslt a_ack!191 #x00000000)))
(assert (not (= #x00000000 b_ack!190)))
(assert (not (= #x00000001 b_ack!190)))
(assert (not (= #x00000000 a_ack!191)))
(assert (not (= #x00000001 a_ack!191)))
(assert (bvslt (bvsub b_ack!190 a_ack!191) #x00000000))

(check-sat)
(exit)
