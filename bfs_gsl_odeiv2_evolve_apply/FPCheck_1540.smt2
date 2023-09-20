(declare-fun t_ack!7647 () (_ BitVec 64))
(declare-fun t1_ack!7648 () (_ BitVec 64))
(declare-fun h_ack!7649 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7648)
                    ((_ to_fp 11 53) t_ack!7647))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7648)
                    ((_ to_fp 11 53) t_ack!7647))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!7648)
                ((_ to_fp 11 53) t_ack!7647))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!7649)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7648)
                    ((_ to_fp 11 53) t_ack!7647)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7648)
                    ((_ to_fp 11 53) t_ack!7647))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW #x3fac71c71c71c71c h_ack!7649))

(check-sat)
(exit)
