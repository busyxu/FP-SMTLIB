(declare-fun a_ack!20 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun d_ack!19 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) a_ack!20) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW d_ack!19 a_ack!20))

(check-sat)
(exit)
