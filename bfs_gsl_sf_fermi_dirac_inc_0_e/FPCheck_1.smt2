(declare-fun b_ack!4 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!5 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW b_ack!4 a_ack!5))

(check-sat)
(exit)
