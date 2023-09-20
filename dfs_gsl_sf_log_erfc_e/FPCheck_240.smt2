(declare-fun a_ack!307 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!307)
                    ((_ to_fp 11 53) a_ack!307))
            ((_ to_fp 11 53) #x3f9932cbb7f0cf30))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!307) ((_ to_fp 11 53) #x4020000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW a_ack!307 #x3fe20dd750429b62))

(check-sat)
(exit)
