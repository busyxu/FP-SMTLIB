(declare-fun a_ack!18 () (_ BitVec 64))
(declare-fun x_ack!19 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x_ack!19) ((_ to_fp 11 53) a_ack!18)))

(check-sat)
(exit)
