(declare-fun a_ack!242 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!242) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!242) ((_ to_fp 11 53) #x3e66a09e667f3bcd)))
(assert (FPCHECK_FMUL_ACCURACY a_ack!242 a_ack!242))

(check-sat)
(exit)
