(declare-fun a_ack!18 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!18) ((_ to_fp 11 53) #x4039000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW a_ack!18 a_ack!18))

(check-sat)
(exit)
