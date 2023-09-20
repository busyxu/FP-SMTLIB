(declare-fun a_ack!2 () (_ BitVec 64))
(declare-fun c_ack!1 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 c_ack!1)))

(check-sat)
(exit)
