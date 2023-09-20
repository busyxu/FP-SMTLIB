(declare-fun t_ack!8176 () (_ BitVec 64))
(declare-fun t1_ack!8177 () (_ BitVec 64))
(declare-fun h_ack!8178 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8177)
                    ((_ to_fp 11 53) t_ack!8176))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8177)
                    ((_ to_fp 11 53) t_ack!8176))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!8177)
                ((_ to_fp 11 53) t_ack!8176))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!8178)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8177)
                    ((_ to_fp 11 53) t_ack!8176)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8177)
                    ((_ to_fp 11 53) t_ack!8176))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW #x3fb5555555555555 h_ack!8178))

(check-sat)
(exit)
