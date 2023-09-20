(declare-fun b_ack!1 () (_ BitVec 64))
(declare-fun a_ack!2 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvslt a_ack!2 #x00000000))

(check-sat)
(exit)
