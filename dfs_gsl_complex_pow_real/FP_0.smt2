(declare-fun x1_ack!2 () (_ BitVec 64))
(declare-fun y1_ack!0 () (_ BitVec 64))
(declare-fun x_ack!1 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) x1_ack!2) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) y1_ack!0) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!1) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
