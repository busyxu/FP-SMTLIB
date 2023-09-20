(declare-fun a_ack!497 () (_ BitVec 32))
(declare-fun b_ack!496 () (_ BitVec 64))
(assert (not (bvslt a_ack!497 #x00000000)))
(assert (not (= #x00000000 a_ack!497)))
(assert (= #x00000001 a_ack!497))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!496) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
