(declare-fun t_ack!10 () (_ BitVec 64))
(declare-fun t1_ack!11 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!12 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!11)
                    ((_ to_fp 11 53) t_ack!10))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!11)
                    ((_ to_fp 11 53) t_ack!10))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW #x8000000000000000 y0_ack!12))

(check-sat)
(exit)
