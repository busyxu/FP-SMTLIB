(declare-fun t_ack!12656 () (_ BitVec 64))
(declare-fun t1_ack!12657 () (_ BitVec 64))
(declare-fun h_ack!12658 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!12657)
                    ((_ to_fp 11 53) t_ack!12656))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!12657)
                    ((_ to_fp 11 53) t_ack!12656))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!12657)
                ((_ to_fp 11 53) t_ack!12656))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!12658)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!12657)
                    ((_ to_fp 11 53) t_ack!12656)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!12657)
                    ((_ to_fp 11 53) t_ack!12656))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW #x3fe21360b60a7776 h_ack!12658))

(check-sat)
(exit)
