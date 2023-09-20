(declare-fun e0_ack!34 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun e1_ack!35 () (_ BitVec 64))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e0_ack!34)
                    ((_ to_fp 11 53) e0_ack!34))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW e1_ack!35 e1_ack!35))

(check-sat)
(exit)
