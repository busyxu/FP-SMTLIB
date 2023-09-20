(declare-fun b_ack!1 () (_ BitVec 64))
(declare-fun a_ack!2 () (_ BitVec 32))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000001 a_ack!2))

(check-sat)
(exit)
