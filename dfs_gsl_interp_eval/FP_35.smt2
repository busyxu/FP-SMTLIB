(declare-fun x1_ack!1043 () (_ BitVec 64))
(declare-fun x0_ack!1046 () (_ BitVec 64))
(declare-fun x2_ack!1044 () (_ BitVec 64))
(declare-fun xx_ack!1045 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1046) ((_ to_fp 11 53) x1_ack!1043)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1043) ((_ to_fp 11 53) x2_ack!1044)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1043)
                       ((_ to_fp 11 53) x0_ack!1046))
               ((_ to_fp 11 53) x0_ack!1046))
       ((_ to_fp 11 53) x1_ack!1043)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1043)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1043)
                       ((_ to_fp 11 53) x0_ack!1046)))
       ((_ to_fp 11 53) x0_ack!1046)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1044)
                       ((_ to_fp 11 53) x1_ack!1043))
               ((_ to_fp 11 53) x1_ack!1043))
       ((_ to_fp 11 53) x2_ack!1044)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1044)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1044)
                       ((_ to_fp 11 53) x1_ack!1043)))
       ((_ to_fp 11 53) x1_ack!1043)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1043)
                    ((_ to_fp 11 53) x0_ack!1046))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1044)
                    ((_ to_fp 11 53) x1_ack!1043))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1045) ((_ to_fp 11 53) x0_ack!1046))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1045) ((_ to_fp 11 53) x2_ack!1044))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1045) ((_ to_fp 11 53) x0_ack!1046))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1045) ((_ to_fp 11 53) x1_ack!1043)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1043) ((_ to_fp 11 53) xx_ack!1045))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1044)
               ((_ to_fp 11 53) x1_ack!1043))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
