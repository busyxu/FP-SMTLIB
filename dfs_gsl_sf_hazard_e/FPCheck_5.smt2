(declare-fun a_ack!7 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7) ((_ to_fp 11 53) #x4039000000000000))))
(assert (FPCHECK_FMUL_ACCURACY a_ack!7 a_ack!7))

(check-sat)
(exit)
