(declare-fun t_ack!19 () (_ BitVec 64))
(declare-fun t1_ack!20 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!21 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!20)
                    ((_ to_fp 11 53) t_ack!19))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!20)
                    ((_ to_fp 11 53) t_ack!19))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY #x8000000000000000 y0_ack!21))

(check-sat)
(exit)
