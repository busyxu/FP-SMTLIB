(declare-fun a_ack!2 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!2) ((_ to_fp 11 53) #x3e68000000000000)))
(assert (FPCHECK_FMUL_ACCURACY #x3cb0000000000000 (fp.abs ((_ to_fp 11 53) a_ack!2))))

(check-sat)
(exit)
