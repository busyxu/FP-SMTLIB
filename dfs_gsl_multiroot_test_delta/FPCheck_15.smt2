(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun x0_ack!35 () (_ BitVec 64))
(assert (FPCHECK_FMUL_OVERFLOW #x3e50000000000000 (fp.abs ((_ to_fp 11 53) x0_ack!35))))

(check-sat)
(exit)
