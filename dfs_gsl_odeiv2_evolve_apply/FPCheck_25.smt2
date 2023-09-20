(declare-fun t_ack!184 () (_ BitVec 64))
(declare-fun t1_ack!185 () (_ BitVec 64))
(declare-fun h_ack!186 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!185)
                    ((_ to_fp 11 53) t_ack!184))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!185)
               ((_ to_fp 11 53) t_ack!184))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!186) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!185)
                ((_ to_fp 11 53) t_ack!184))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!186)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!185)
                    ((_ to_fp 11 53) t_ack!184)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!185)
                    ((_ to_fp 11 53) t_ack!184))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW #x3fac71c71c71c71c h_ack!186))

(check-sat)
(exit)
