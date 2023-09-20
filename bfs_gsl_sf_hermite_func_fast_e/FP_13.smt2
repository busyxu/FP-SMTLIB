(declare-fun a_ack!127 () (_ BitVec 32))
(declare-fun b_ack!126 () (_ BitVec 64))
(assert (bvslt a_ack!127 #x000003e8))
(assert (not (bvslt a_ack!127 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!126) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!127))

(check-sat)
(exit)
