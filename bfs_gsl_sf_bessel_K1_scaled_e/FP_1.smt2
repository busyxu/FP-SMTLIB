(declare-fun a_ack!1 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1) ((_ to_fp 11 53) #x1fff5de25335c4ee))))

(check-sat)
(exit)
