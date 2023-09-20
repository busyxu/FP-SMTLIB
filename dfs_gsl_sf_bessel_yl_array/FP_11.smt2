(declare-fun a_ack!147 () (_ BitVec 32))
(declare-fun b_ack!146 () (_ BitVec 64))
(assert (not (bvslt a_ack!147 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!146) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!147)))

(check-sat)
(exit)
