(declare-fun t_ack!11874 () (_ BitVec 64))
(declare-fun t1_ack!11875 () (_ BitVec 64))
(declare-fun h_ack!11877 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!11876 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!11875)
                    ((_ to_fp 11 53) t_ack!11874))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!11875)
                    ((_ to_fp 11 53) t_ack!11874))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!11875)
                ((_ to_fp 11 53) t_ack!11874))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!11877)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!11875)
                    ((_ to_fp 11 53) t_ack!11874)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!11875)
                    ((_ to_fp 11 53) t_ack!11874))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY #x3fb1b04260f85fe2 y1_ack!11876))

(check-sat)
(exit)
