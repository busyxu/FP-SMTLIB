(declare-fun t_ack!1628 () (_ BitVec 64))
(declare-fun t1_ack!1629 () (_ BitVec 64))
(declare-fun h_ack!1630 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!1629)
                    ((_ to_fp 11 53) t_ack!1628))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!1629)
               ((_ to_fp 11 53) t_ack!1628))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!1630) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!1629)
                ((_ to_fp 11 53) t_ack!1628))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!1630)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!1629)
               ((_ to_fp 11 53) t_ack!1628))))

(check-sat)
(exit)
