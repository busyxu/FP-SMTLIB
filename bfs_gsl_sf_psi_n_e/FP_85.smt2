(declare-fun a_ack!1656 () (_ BitVec 32))
(declare-fun b_ack!1655 () (_ BitVec 64))
(assert (not (= #x00000000 a_ack!1656)))
(assert (= #x00000001 a_ack!1656))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1655) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
