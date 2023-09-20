(declare-fun a_ack!127 () (_ BitVec 32))
(declare-fun b_ack!126 () (_ BitVec 64))
(assert (not (bvslt a_ack!127 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!126) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!127)))
(assert (not (= #x00000001 a_ack!127)))

(check-sat)
(exit)
