(declare-fun a_ack!20 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!20) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!20) ((_ to_fp 11 53) #x1ff0000000000001))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!20) ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW a_ack!20 a_ack!20))

(check-sat)
(exit)
