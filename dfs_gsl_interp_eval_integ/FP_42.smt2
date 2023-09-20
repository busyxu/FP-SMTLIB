(declare-fun x1_ack!1967 () (_ BitVec 64))
(declare-fun x0_ack!1971 () (_ BitVec 64))
(declare-fun x2_ack!1968 () (_ BitVec 64))
(declare-fun b_ack!1970 () (_ BitVec 64))
(declare-fun a_ack!1969 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1971) ((_ to_fp 11 53) x1_ack!1967)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1967) ((_ to_fp 11 53) x2_ack!1968)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1967)
                       ((_ to_fp 11 53) x0_ack!1971))
               ((_ to_fp 11 53) x0_ack!1971))
       ((_ to_fp 11 53) x1_ack!1967)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1967)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1967)
                       ((_ to_fp 11 53) x0_ack!1971)))
       ((_ to_fp 11 53) x0_ack!1971)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1968)
                       ((_ to_fp 11 53) x1_ack!1967))
               ((_ to_fp 11 53) x1_ack!1967))
       ((_ to_fp 11 53) x2_ack!1968)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1968)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1968)
                       ((_ to_fp 11 53) x1_ack!1967)))
       ((_ to_fp 11 53) x1_ack!1967)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1967)
                    ((_ to_fp 11 53) x0_ack!1971))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1968)
                    ((_ to_fp 11 53) x1_ack!1967))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1969) ((_ to_fp 11 53) b_ack!1970))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1969) ((_ to_fp 11 53) x0_ack!1971))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1970) ((_ to_fp 11 53) x2_ack!1968))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1969) ((_ to_fp 11 53) b_ack!1970))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1969) ((_ to_fp 11 53) x0_ack!1971))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1969) ((_ to_fp 11 53) x1_ack!1967))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1970) ((_ to_fp 11 53) x0_ack!1971))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1970) ((_ to_fp 11 53) x1_ack!1967)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1967) ((_ to_fp 11 53) b_ack!1970))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1967)
                    ((_ to_fp 11 53) x0_ack!1971))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1968)
                    ((_ to_fp 11 53) x1_ack!1967))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
