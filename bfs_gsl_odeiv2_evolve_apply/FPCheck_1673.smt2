(declare-fun t_ack!8920 () (_ BitVec 64))
(declare-fun t1_ack!8921 () (_ BitVec 64))
(declare-fun h_ack!8923 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!8922 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8921)
                    ((_ to_fp 11 53) t_ack!8920))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8921)
                    ((_ to_fp 11 53) t_ack!8920))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!8921)
                ((_ to_fp 11 53) t_ack!8920))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!8923)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8921)
                    ((_ to_fp 11 53) t_ack!8920)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8921)
                    ((_ to_fp 11 53) t_ack!8920))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW #x3fd4000000000000 y1_ack!8922))

(check-sat)
(exit)
