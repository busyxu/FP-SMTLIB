(declare-fun a_ack!5 () (_ BitVec 32))
(declare-fun b_ack!3 () (_ BitVec 32))
(declare-fun c_ack!4 () (_ BitVec 64))
(assert (not (bvslt a_ack!5 #x00000000)))
(assert (not (bvslt b_ack!3 a_ack!5)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
