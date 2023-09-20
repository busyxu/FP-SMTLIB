(declare-fun t_ack!12885 () (_ BitVec 64))
(declare-fun t1_ack!12886 () (_ BitVec 64))
(declare-fun h_ack!12888 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!12887 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!12886)
                    ((_ to_fp 11 53) t_ack!12885))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!12886)
                    ((_ to_fp 11 53) t_ack!12885))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!12886)
                ((_ to_fp 11 53) t_ack!12885))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!12888)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!12886)
                    ((_ to_fp 11 53) t_ack!12885)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!12886)
                    ((_ to_fp 11 53) t_ack!12885))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY #x3fc77ecbb1301621 y1_ack!12887))

(check-sat)
(exit)
