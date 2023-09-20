(declare-fun t_ack!24 () (_ BitVec 64))
(declare-fun t1_ack!25 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!26 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!25)
                    ((_ to_fp 11 53) t_ack!24))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!25)
                    ((_ to_fp 11 53) t_ack!24))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW #x4024000000000000 y1_ack!26))

(check-sat)
(exit)
