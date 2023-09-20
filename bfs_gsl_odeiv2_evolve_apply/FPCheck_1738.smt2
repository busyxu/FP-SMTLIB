(declare-fun t_ack!9557 () (_ BitVec 64))
(declare-fun t1_ack!9558 () (_ BitVec 64))
(declare-fun h_ack!9560 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!9559 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9558)
                    ((_ to_fp 11 53) t_ack!9557))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9558)
                    ((_ to_fp 11 53) t_ack!9557))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!9558)
                ((_ to_fp 11 53) t_ack!9557))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!9560)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9558)
                    ((_ to_fp 11 53) t_ack!9557)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9558)
                    ((_ to_fp 11 53) t_ack!9557))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW #x3fa3333333333333 y1_ack!9559))

(check-sat)
(exit)
