(declare-fun a_ack!33 () (_ BitVec 64))
(declare-fun x_ack!34 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x_ack!34) ((_ to_fp 11 53) a_ack!33)))

(check-sat)
(exit)
