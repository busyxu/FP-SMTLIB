(declare-fun a_ack!6 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!6))
            ((_ to_fp 11 53) #x3e50000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!6)) ((_ to_fp 11 53) #x3fd8000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW #x4060000000000000 a_ack!6))

(check-sat)
(exit)
