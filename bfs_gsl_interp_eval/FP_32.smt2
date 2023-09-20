(declare-fun x1_ack!1066 () (_ BitVec 64))
(declare-fun x0_ack!1069 () (_ BitVec 64))
(declare-fun x2_ack!1067 () (_ BitVec 64))
(declare-fun xx_ack!1068 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1069) ((_ to_fp 11 53) x1_ack!1066)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1066) ((_ to_fp 11 53) x2_ack!1067)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1066)
                       ((_ to_fp 11 53) x0_ack!1069))
               ((_ to_fp 11 53) x0_ack!1069))
       ((_ to_fp 11 53) x1_ack!1066)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1066)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1066)
                       ((_ to_fp 11 53) x0_ack!1069)))
       ((_ to_fp 11 53) x0_ack!1069)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1067)
                       ((_ to_fp 11 53) x1_ack!1066))
               ((_ to_fp 11 53) x1_ack!1066))
       ((_ to_fp 11 53) x2_ack!1067)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1067)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1067)
                       ((_ to_fp 11 53) x1_ack!1066)))
       ((_ to_fp 11 53) x1_ack!1066)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1066)
                    ((_ to_fp 11 53) x0_ack!1069))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1067)
                    ((_ to_fp 11 53) x1_ack!1066))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1068) ((_ to_fp 11 53) x0_ack!1069))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1068) ((_ to_fp 11 53) x2_ack!1067))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1068) ((_ to_fp 11 53) x0_ack!1069))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1068) ((_ to_fp 11 53) x1_ack!1066))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1066)
               ((_ to_fp 11 53) x0_ack!1069))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
