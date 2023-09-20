(declare-fun a_ack!1578 () (_ BitVec 64))
(declare-fun b_ack!1577 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1578) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1577) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1578) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1577) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1578) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) b_ack!1577) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1578) ((_ to_fp 11 53) b_ack!1577))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1578) ((_ to_fp 11 53) b_ack!1577)))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1578)
                    ((_ to_fp 11 53) b_ack!1577))
            ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1578)
                       ((_ to_fp 11 53) b_ack!1577))
               ((_ to_fp 11 53) a_ack!1578))
       ((_ to_fp 11 53) b_ack!1577)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1578)
                       ((_ to_fp 11 53) b_ack!1577))
               ((_ to_fp 11 53) b_ack!1577))
       ((_ to_fp 11 53) a_ack!1578)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1578)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) a_ack!1578)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!1578)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1578)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
