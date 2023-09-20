(declare-fun t_ack!11866 () (_ BitVec 64))
(declare-fun t1_ack!11867 () (_ BitVec 64))
(declare-fun h_ack!11869 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!11868 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!11867)
                    ((_ to_fp 11 53) t_ack!11866))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!11867)
                    ((_ to_fp 11 53) t_ack!11866))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!11867)
                ((_ to_fp 11 53) t_ack!11866))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!11869)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!11867)
                    ((_ to_fp 11 53) t_ack!11866)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!11867)
                    ((_ to_fp 11 53) t_ack!11866))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW #x3fb1b04260f85fe2 y1_ack!11868))

(check-sat)
(exit)
