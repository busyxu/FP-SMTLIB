(declare-fun t_ack!8397 () (_ BitVec 64))
(declare-fun t1_ack!8398 () (_ BitVec 64))
(declare-fun h_ack!8400 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!8399 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8398)
                    ((_ to_fp 11 53) t_ack!8397))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8398)
                    ((_ to_fp 11 53) t_ack!8397))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!8398)
                ((_ to_fp 11 53) t_ack!8397))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!8400)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8398)
                    ((_ to_fp 11 53) t_ack!8397)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8398)
                    ((_ to_fp 11 53) t_ack!8397))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW #x3fa0000000000000 y1_ack!8399))

(check-sat)
(exit)
