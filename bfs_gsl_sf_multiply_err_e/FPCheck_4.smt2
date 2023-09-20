(declare-fun a_ack!22 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun d_ack!21 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) a_ack!22) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW d_ack!21 a_ack!22))

(check-sat)
(exit)
