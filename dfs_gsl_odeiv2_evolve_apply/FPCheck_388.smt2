(declare-fun t_ack!3636 () (_ BitVec 64))
(declare-fun t1_ack!3637 () (_ BitVec 64))
(declare-fun h_ack!3639 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!3638 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!3637)
                    ((_ to_fp 11 53) t_ack!3636))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!3637)
               ((_ to_fp 11 53) t_ack!3636))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!3639) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!3637)
                ((_ to_fp 11 53) t_ack!3636))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!3639)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!3637)
               ((_ to_fp 11 53) t_ack!3636))))
(assert (FPCHECK_FMUL_UNDERFLOW #x3f9152f31366e4d8 y1_ack!3638))

(check-sat)
(exit)
