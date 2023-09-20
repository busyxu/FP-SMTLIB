(declare-fun t_ack!1090 () (_ BitVec 64))
(declare-fun t1_ack!1091 () (_ BitVec 64))
(declare-fun h_ack!1093 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!1092 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!1091)
                    ((_ to_fp 11 53) t_ack!1090))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!1091)
               ((_ to_fp 11 53) t_ack!1090))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!1093) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!1091)
                ((_ to_fp 11 53) t_ack!1090))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!1093)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!1091)
               ((_ to_fp 11 53) t_ack!1090))))
(assert (FPCHECK_FMUL_OVERFLOW #x3fa0000000000000 y1_ack!1092))

(check-sat)
(exit)
