(declare-fun t_ack!1620 () (_ BitVec 64))
(declare-fun t1_ack!1621 () (_ BitVec 64))
(declare-fun h_ack!1623 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!1622 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!1621)
                    ((_ to_fp 11 53) t_ack!1620))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!1621)
               ((_ to_fp 11 53) t_ack!1620))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!1623) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!1621)
                ((_ to_fp 11 53) t_ack!1620))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!1623)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!1621)
               ((_ to_fp 11 53) t_ack!1620))))
(assert (FPCHECK_FMUL_ACCURACY #x3fd4000000000000 y1_ack!1622))

(check-sat)
(exit)
