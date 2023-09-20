(declare-fun t_ack!9350 () (_ BitVec 64))
(declare-fun t1_ack!9351 () (_ BitVec 64))
(declare-fun h_ack!9352 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9351)
                    ((_ to_fp 11 53) t_ack!9350))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9351)
                    ((_ to_fp 11 53) t_ack!9350))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!9351)
                ((_ to_fp 11 53) t_ack!9350))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!9352)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9351)
                    ((_ to_fp 11 53) t_ack!9350)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9351)
                    ((_ to_fp 11 53) t_ack!9350))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY #x3fd4000000000000 h_ack!9352))

(check-sat)
(exit)
