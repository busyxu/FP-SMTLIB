(declare-fun x1_ack!34 () (_ BitVec 64))
(declare-fun x0_ack!37 () (_ BitVec 64))
(declare-fun y0_ack!35 () (_ BitVec 64))
(declare-fun x_ack!36 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!37) ((_ to_fp 11 53) x1_ack!34))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!35) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!36) ((_ to_fp 11 53) x0_ack!37))))
(assert (fp.gt ((_ to_fp 11 53) x_ack!36) ((_ to_fp 11 53) x1_ack!34)))

(check-sat)
(exit)
