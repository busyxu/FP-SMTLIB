(declare-fun a_ack!58 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun b_ack!57 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) a_ack!58) ((_ to_fp 11 53) #xc000000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW b_ack!57 b_ack!57))

(check-sat)
(exit)
