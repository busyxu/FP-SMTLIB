(declare-fun a_ack!35 () (_ BitVec 64))
(declare-fun x_ack!37 () (_ BitVec 64))
(declare-fun b_ack!36 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!37) ((_ to_fp 11 53) a_ack!35))))
(assert (fp.gt ((_ to_fp 11 53) x_ack!37) ((_ to_fp 11 53) b_ack!36)))

(check-sat)
(exit)
