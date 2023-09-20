(declare-fun t_ack!9989 () (_ BitVec 64))
(declare-fun t1_ack!9990 () (_ BitVec 64))
(declare-fun h_ack!9991 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9990)
                    ((_ to_fp 11 53) t_ack!9989))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9990)
                    ((_ to_fp 11 53) t_ack!9989))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!9990)
                ((_ to_fp 11 53) t_ack!9989))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!9991)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9990)
                    ((_ to_fp 11 53) t_ack!9989)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9990)
                    ((_ to_fp 11 53) t_ack!9989))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW #x3fd8000000000000 h_ack!9991))

(check-sat)
(exit)
