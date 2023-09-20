(declare-fun a_ack!1019 () (_ BitVec 64))
(declare-fun b_ack!1018 () (_ BitVec 64))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1019) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) b_ack!1018) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1019) ((_ to_fp 11 53) #x4049000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1018) ((_ to_fp 11 53) #x4049000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1019) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1018) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1019)
                       ((_ to_fp 11 53) b_ack!1018))
               ((_ to_fp 11 53) a_ack!1019))
       ((_ to_fp 11 53) b_ack!1018)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1019)
                       ((_ to_fp 11 53) b_ack!1018))
               ((_ to_fp 11 53) b_ack!1018))
       ((_ to_fp 11 53) a_ack!1019)))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1019)
                    ((_ to_fp 11 53) b_ack!1018))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1019) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1018) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
