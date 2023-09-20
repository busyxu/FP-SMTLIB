(declare-fun t_ack!11639 () (_ BitVec 64))
(declare-fun t1_ack!11640 () (_ BitVec 64))
(declare-fun h_ack!11641 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!11640)
                    ((_ to_fp 11 53) t_ack!11639))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!11640)
                    ((_ to_fp 11 53) t_ack!11639))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!11640)
                ((_ to_fp 11 53) t_ack!11639))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!11641)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!11640)
                    ((_ to_fp 11 53) t_ack!11639)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!11640)
                    ((_ to_fp 11 53) t_ack!11639))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW #x3fddc28f5c28f5c3 h_ack!11641))

(check-sat)
(exit)
