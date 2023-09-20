(declare-fun t_ack!12869 () (_ BitVec 64))
(declare-fun t1_ack!12870 () (_ BitVec 64))
(declare-fun h_ack!12872 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!12871 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!12870)
                    ((_ to_fp 11 53) t_ack!12869))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!12870)
                    ((_ to_fp 11 53) t_ack!12869))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!12870)
                ((_ to_fp 11 53) t_ack!12869))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!12872)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!12870)
                    ((_ to_fp 11 53) t_ack!12869)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!12870)
                    ((_ to_fp 11 53) t_ack!12869))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW #x3fc77ecbb1301621 y1_ack!12871))

(check-sat)
(exit)
