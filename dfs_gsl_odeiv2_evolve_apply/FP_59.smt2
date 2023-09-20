(declare-fun t_ack!1993 () (_ BitVec 64))
(declare-fun t1_ack!1994 () (_ BitVec 64))
(declare-fun h_ack!1995 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!1994)
                    ((_ to_fp 11 53) t_ack!1993))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!1994)
               ((_ to_fp 11 53) t_ack!1993))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!1995) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!1994)
                ((_ to_fp 11 53) t_ack!1993))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!1995)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!1994)
               ((_ to_fp 11 53) t_ack!1993))))

(check-sat)
(exit)
