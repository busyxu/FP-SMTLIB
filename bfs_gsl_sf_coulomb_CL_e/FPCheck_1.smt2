(declare-fun a_ack!5 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun b_ack!4 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!5) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!5)) ((_ to_fp 11 53) #x3cb0000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW #x401921fb54442d18 b_ack!4))

(check-sat)
(exit)
