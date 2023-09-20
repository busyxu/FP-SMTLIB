(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun a_ack!1 () (_ BitVec 64))
(assert (FPCHECK_FMUL_UNDERFLOW #x3fb999999999999a (fp.abs ((_ to_fp 11 53) a_ack!1))))

(check-sat)
(exit)
