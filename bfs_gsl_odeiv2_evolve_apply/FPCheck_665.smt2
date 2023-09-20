(declare-fun t_ack!3153 () (_ BitVec 64))
(declare-fun t1_ack!3154 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun h_ack!3155 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!3154)
                    ((_ to_fp 11 53) t_ack!3153))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!3154)
                    ((_ to_fp 11 53) t_ack!3153))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) t1_ack!3154)
                     ((_ to_fp 11 53) t_ack!3153))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!3154)
                    ((_ to_fp 11 53) t_ack!3153))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY #x3fe4cccccccccccd h_ack!3155))

(check-sat)
(exit)
