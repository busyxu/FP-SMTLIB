(declare-fun t_ack!10750 () (_ BitVec 64))
(declare-fun t1_ack!10751 () (_ BitVec 64))
(declare-fun h_ack!10752 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10751)
                    ((_ to_fp 11 53) t_ack!10750))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10751)
                    ((_ to_fp 11 53) t_ack!10750))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!10751)
                ((_ to_fp 11 53) t_ack!10750))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!10752)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10751)
                    ((_ to_fp 11 53) t_ack!10750)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10751)
                    ((_ to_fp 11 53) t_ack!10750))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW #x3fc2e147ae147ae1 h_ack!10752))

(check-sat)
(exit)
