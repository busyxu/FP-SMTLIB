(declare-fun x1_ack!873 () (_ BitVec 64))
(declare-fun x0_ack!876 () (_ BitVec 64))
(declare-fun x2_ack!874 () (_ BitVec 64))
(declare-fun xx_ack!875 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!876) ((_ to_fp 11 53) x1_ack!873)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!873) ((_ to_fp 11 53) x2_ack!874)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!873)
                       ((_ to_fp 11 53) x0_ack!876))
               ((_ to_fp 11 53) x0_ack!876))
       ((_ to_fp 11 53) x1_ack!873)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!873)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!873)
                       ((_ to_fp 11 53) x0_ack!876)))
       ((_ to_fp 11 53) x0_ack!876)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!874)
                       ((_ to_fp 11 53) x1_ack!873))
               ((_ to_fp 11 53) x1_ack!873))
       ((_ to_fp 11 53) x2_ack!874)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!874)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!874)
                       ((_ to_fp 11 53) x1_ack!873)))
       ((_ to_fp 11 53) x1_ack!873)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!873)
                    ((_ to_fp 11 53) x0_ack!876))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!874)
                    ((_ to_fp 11 53) x1_ack!873))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!875) ((_ to_fp 11 53) x0_ack!876))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!875) ((_ to_fp 11 53) x2_ack!874))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!875) ((_ to_fp 11 53) x0_ack!876))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!875) ((_ to_fp 11 53) x1_ack!873)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!873) ((_ to_fp 11 53) xx_ack!875))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!874)
               ((_ to_fp 11 53) x1_ack!873))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
