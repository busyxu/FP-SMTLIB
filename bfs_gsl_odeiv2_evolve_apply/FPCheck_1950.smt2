(declare-fun t_ack!11651 () (_ BitVec 64))
(declare-fun t1_ack!11652 () (_ BitVec 64))
(declare-fun h_ack!11653 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!11652)
                    ((_ to_fp 11 53) t_ack!11651))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!11652)
                    ((_ to_fp 11 53) t_ack!11651))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!11652)
                ((_ to_fp 11 53) t_ack!11651))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!11653)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!11652)
                    ((_ to_fp 11 53) t_ack!11651)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!11652)
                    ((_ to_fp 11 53) t_ack!11651))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY #x3fddc28f5c28f5c3 h_ack!11653))

(check-sat)
(exit)
