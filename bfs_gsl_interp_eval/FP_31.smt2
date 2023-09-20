(declare-fun x1_ack!1027 () (_ BitVec 64))
(declare-fun x0_ack!1030 () (_ BitVec 64))
(declare-fun x2_ack!1028 () (_ BitVec 64))
(declare-fun xx_ack!1029 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1030) ((_ to_fp 11 53) x1_ack!1027)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1027) ((_ to_fp 11 53) x2_ack!1028)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1027)
                       ((_ to_fp 11 53) x0_ack!1030))
               ((_ to_fp 11 53) x0_ack!1030))
       ((_ to_fp 11 53) x1_ack!1027)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1027)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1027)
                       ((_ to_fp 11 53) x0_ack!1030)))
       ((_ to_fp 11 53) x0_ack!1030)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1028)
                       ((_ to_fp 11 53) x1_ack!1027))
               ((_ to_fp 11 53) x1_ack!1027))
       ((_ to_fp 11 53) x2_ack!1028)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1028)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1028)
                       ((_ to_fp 11 53) x1_ack!1027)))
       ((_ to_fp 11 53) x1_ack!1027)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1027)
                    ((_ to_fp 11 53) x0_ack!1030))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1028)
                    ((_ to_fp 11 53) x1_ack!1027))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1029) ((_ to_fp 11 53) x0_ack!1030))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1029) ((_ to_fp 11 53) x2_ack!1028))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1029) ((_ to_fp 11 53) x0_ack!1030))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1029) ((_ to_fp 11 53) x1_ack!1027))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1027)
               ((_ to_fp 11 53) x0_ack!1030))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
