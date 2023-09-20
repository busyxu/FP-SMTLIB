(declare-fun x1_ack!1074 () (_ BitVec 64))
(declare-fun x0_ack!1077 () (_ BitVec 64))
(declare-fun x2_ack!1075 () (_ BitVec 64))
(declare-fun xx_ack!1076 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1077) ((_ to_fp 11 53) x1_ack!1074)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1074) ((_ to_fp 11 53) x2_ack!1075)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1074)
                       ((_ to_fp 11 53) x0_ack!1077))
               ((_ to_fp 11 53) x0_ack!1077))
       ((_ to_fp 11 53) x1_ack!1074)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1074)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1074)
                       ((_ to_fp 11 53) x0_ack!1077)))
       ((_ to_fp 11 53) x0_ack!1077)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1075)
                       ((_ to_fp 11 53) x1_ack!1074))
               ((_ to_fp 11 53) x1_ack!1074))
       ((_ to_fp 11 53) x2_ack!1075)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1075)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1075)
                       ((_ to_fp 11 53) x1_ack!1074)))
       ((_ to_fp 11 53) x1_ack!1074)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1074)
                    ((_ to_fp 11 53) x0_ack!1077))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1075)
                    ((_ to_fp 11 53) x1_ack!1074))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1076) ((_ to_fp 11 53) x0_ack!1077))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1076) ((_ to_fp 11 53) x2_ack!1075))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1076) ((_ to_fp 11 53) x0_ack!1077))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1076) ((_ to_fp 11 53) x1_ack!1074)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1074) ((_ to_fp 11 53) xx_ack!1076))))

(check-sat)
(exit)
