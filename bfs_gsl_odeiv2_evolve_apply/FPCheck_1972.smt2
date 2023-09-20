(declare-fun t_ack!11858 () (_ BitVec 64))
(declare-fun t1_ack!11859 () (_ BitVec 64))
(declare-fun h_ack!11861 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!11860 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!11859)
                    ((_ to_fp 11 53) t_ack!11858))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!11859)
                    ((_ to_fp 11 53) t_ack!11858))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!11859)
                ((_ to_fp 11 53) t_ack!11858))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!11861)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!11859)
                    ((_ to_fp 11 53) t_ack!11858)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!11859)
                    ((_ to_fp 11 53) t_ack!11858))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW #x3fb1b04260f85fe2 y1_ack!11860))

(check-sat)
(exit)
