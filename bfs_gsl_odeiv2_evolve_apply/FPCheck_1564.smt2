(declare-fun t_ack!7866 () (_ BitVec 64))
(declare-fun t1_ack!7867 () (_ BitVec 64))
(declare-fun h_ack!7869 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!7868 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7867)
                    ((_ to_fp 11 53) t_ack!7866))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7867)
                    ((_ to_fp 11 53) t_ack!7866))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!7867)
                ((_ to_fp 11 53) t_ack!7866))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!7869)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7867)
                    ((_ to_fp 11 53) t_ack!7866)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7867)
                    ((_ to_fp 11 53) t_ack!7866))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW #x3f95555555555555 y1_ack!7868))

(check-sat)
(exit)
