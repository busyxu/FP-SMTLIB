(declare-fun b_ack!0 () (_ BitVec 64))
(declare-fun a_ack!1 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!0) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!1 #x00000000)))
(assert (not (= #x00000000 a_ack!1)))

(check-sat)
(exit)
