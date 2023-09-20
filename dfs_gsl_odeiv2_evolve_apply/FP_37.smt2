(declare-fun t_ack!1175 () (_ BitVec 64))
(declare-fun t1_ack!1176 () (_ BitVec 64))
(declare-fun h_ack!1177 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!1176)
                    ((_ to_fp 11 53) t_ack!1175))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!1176)
               ((_ to_fp 11 53) t_ack!1175))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!1177) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!1176)
                ((_ to_fp 11 53) t_ack!1175))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!1177)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!1176)
               ((_ to_fp 11 53) t_ack!1175))))

(check-sat)
(exit)
