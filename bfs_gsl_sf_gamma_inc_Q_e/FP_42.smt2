(declare-fun a_ack!1040 () (_ BitVec 64))
(declare-fun b_ack!1039 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1040) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1039) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1039) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1040) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!1039)
        (fp.mul roundNearestTiesToEven
                ((_ to_fp 11 53) #x3fe0000000000000)
                ((_ to_fp 11 53) a_ack!1040))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1040) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1039)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!1040)))))
(assert (fp.leq (fp.div roundNearestTiesToEven
                (fp.sub roundNearestTiesToEven
                        ((_ to_fp 11 53) b_ack!1039)
                        ((_ to_fp 11 53) a_ack!1040))
                ((_ to_fp 11 53) a_ack!1040))
        ((_ to_fp 11 53) #xbff0000000000000)))

(check-sat)
(exit)
