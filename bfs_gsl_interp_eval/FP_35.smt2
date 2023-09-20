(declare-fun x1_ack!1108 () (_ BitVec 64))
(declare-fun x0_ack!1111 () (_ BitVec 64))
(declare-fun x2_ack!1109 () (_ BitVec 64))
(declare-fun xx_ack!1110 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1111) ((_ to_fp 11 53) x1_ack!1108)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1108) ((_ to_fp 11 53) x2_ack!1109)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1108)
                       ((_ to_fp 11 53) x0_ack!1111))
               ((_ to_fp 11 53) x0_ack!1111))
       ((_ to_fp 11 53) x1_ack!1108)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1108)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1108)
                       ((_ to_fp 11 53) x0_ack!1111)))
       ((_ to_fp 11 53) x0_ack!1111)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1109)
                       ((_ to_fp 11 53) x1_ack!1108))
               ((_ to_fp 11 53) x1_ack!1108))
       ((_ to_fp 11 53) x2_ack!1109)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1109)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1109)
                       ((_ to_fp 11 53) x1_ack!1108)))
       ((_ to_fp 11 53) x1_ack!1108)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1108)
                    ((_ to_fp 11 53) x0_ack!1111))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1109)
                    ((_ to_fp 11 53) x1_ack!1108))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1110) ((_ to_fp 11 53) x0_ack!1111))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1110) ((_ to_fp 11 53) x2_ack!1109))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1110) ((_ to_fp 11 53) x0_ack!1111))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1110) ((_ to_fp 11 53) x1_ack!1108)))
(assert (fp.gt ((_ to_fp 11 53) x1_ack!1108) ((_ to_fp 11 53) xx_ack!1110)))

(check-sat)
(exit)
