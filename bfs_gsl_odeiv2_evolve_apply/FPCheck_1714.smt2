(declare-fun t_ack!9338 () (_ BitVec 64))
(declare-fun t1_ack!9339 () (_ BitVec 64))
(declare-fun h_ack!9340 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9339)
                    ((_ to_fp 11 53) t_ack!9338))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9339)
                    ((_ to_fp 11 53) t_ack!9338))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!9339)
                ((_ to_fp 11 53) t_ack!9338))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!9340)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9339)
                    ((_ to_fp 11 53) t_ack!9338)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9339)
                    ((_ to_fp 11 53) t_ack!9338))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW #x3fd4000000000000 h_ack!9340))

(check-sat)
(exit)
