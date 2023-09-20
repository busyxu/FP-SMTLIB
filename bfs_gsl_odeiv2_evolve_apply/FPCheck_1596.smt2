(declare-fun t_ack!8182 () (_ BitVec 64))
(declare-fun t1_ack!8183 () (_ BitVec 64))
(declare-fun h_ack!8184 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8183)
                    ((_ to_fp 11 53) t_ack!8182))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8183)
                    ((_ to_fp 11 53) t_ack!8182))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!8183)
                ((_ to_fp 11 53) t_ack!8182))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!8184)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8183)
                    ((_ to_fp 11 53) t_ack!8182)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8183)
                    ((_ to_fp 11 53) t_ack!8182))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY #x3fb5555555555555 h_ack!8184))

(check-sat)
(exit)
