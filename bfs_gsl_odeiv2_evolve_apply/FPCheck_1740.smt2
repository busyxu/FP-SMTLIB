(declare-fun t_ack!9573 () (_ BitVec 64))
(declare-fun t1_ack!9574 () (_ BitVec 64))
(declare-fun h_ack!9576 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!9575 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9574)
                    ((_ to_fp 11 53) t_ack!9573))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9574)
                    ((_ to_fp 11 53) t_ack!9573))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!9574)
                ((_ to_fp 11 53) t_ack!9573))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!9576)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9574)
                    ((_ to_fp 11 53) t_ack!9573)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9574)
                    ((_ to_fp 11 53) t_ack!9573))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY #x3fa3333333333333 y1_ack!9575))

(check-sat)
(exit)
