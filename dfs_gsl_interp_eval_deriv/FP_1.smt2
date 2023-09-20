(declare-fun x1_ack!2 () (_ BitVec 64))
(declare-fun x0_ack!4 () (_ BitVec 64))
(declare-fun x2_ack!3 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4) ((_ to_fp 11 53) x1_ack!2)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2) ((_ to_fp 11 53) x2_ack!3)))

(check-sat)
(exit)
