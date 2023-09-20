(declare-fun a_ack!9 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!9))
            ((_ to_fp 11 53) #x3e50000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!9)) ((_ to_fp 11 53) #x4010000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW a_ack!9 a_ack!9))

(check-sat)
(exit)
