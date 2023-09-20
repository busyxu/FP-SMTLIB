(declare-fun a_ack!5 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun b_ack!4 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) a_ack!5) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW #x3ff5555555555555 b_ack!4))

(check-sat)
(exit)
