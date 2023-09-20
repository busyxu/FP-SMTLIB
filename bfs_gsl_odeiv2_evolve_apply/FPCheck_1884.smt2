(declare-fun t_ack!10985 () (_ BitVec 64))
(declare-fun t1_ack!10986 () (_ BitVec 64))
(declare-fun h_ack!10988 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!10987 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10986)
                    ((_ to_fp 11 53) t_ack!10985))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10986)
                    ((_ to_fp 11 53) t_ack!10985))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!10986)
                ((_ to_fp 11 53) t_ack!10985))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!10988)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10986)
                    ((_ to_fp 11 53) t_ack!10985)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10986)
                    ((_ to_fp 11 53) t_ack!10985))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY #x3f9152f31366e4d8 y1_ack!10987))

(check-sat)
(exit)
