(declare-fun t_ack!8389 () (_ BitVec 64))
(declare-fun t1_ack!8390 () (_ BitVec 64))
(declare-fun h_ack!8392 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!8391 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8390)
                    ((_ to_fp 11 53) t_ack!8389))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8390)
                    ((_ to_fp 11 53) t_ack!8389))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!8390)
                ((_ to_fp 11 53) t_ack!8389))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!8392)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8390)
                    ((_ to_fp 11 53) t_ack!8389)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8390)
                    ((_ to_fp 11 53) t_ack!8389))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW #x3fa0000000000000 y1_ack!8391))

(check-sat)
(exit)
