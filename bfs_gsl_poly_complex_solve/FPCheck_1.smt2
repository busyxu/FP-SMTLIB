(declare-fun a5_ack!3 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a0_ack!4 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a5_ack!3) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW #x8000000000000000 a0_ack!4))

(check-sat)
(exit)
