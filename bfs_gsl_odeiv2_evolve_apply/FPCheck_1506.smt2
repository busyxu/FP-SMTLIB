(declare-fun t_ack!7342 () (_ BitVec 64))
(declare-fun t1_ack!7343 () (_ BitVec 64))
(declare-fun h_ack!7344 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!7343)
               ((_ to_fp 11 53) t_ack!7342))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!7344) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7343)
                    ((_ to_fp 11 53) t_ack!7342))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) t1_ack!7343)
                     ((_ to_fp 11 53) t_ack!7342))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!7343)
               ((_ to_fp 11 53) t_ack!7342))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!7344)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7343)
                    ((_ to_fp 11 53) t_ack!7342)))))
(assert (FPCHECK_FMUL_ACCURACY #x3fac71c71c71c71c h_ack!7344))

(check-sat)
(exit)
