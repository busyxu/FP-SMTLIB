(declare-fun t_ack!47 () (_ BitVec 64))
(declare-fun t1_ack!48 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!49 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!48)
                    ((_ to_fp 11 53) t_ack!47))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!48)
                    ((_ to_fp 11 53) t_ack!47))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW y0_ack!49 y0_ack!49))

(check-sat)
(exit)
