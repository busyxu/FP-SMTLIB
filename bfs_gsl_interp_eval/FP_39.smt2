(declare-fun x1_ack!1234 () (_ BitVec 64))
(declare-fun x0_ack!1237 () (_ BitVec 64))
(declare-fun x2_ack!1235 () (_ BitVec 64))
(declare-fun xx_ack!1236 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1237) ((_ to_fp 11 53) x1_ack!1234)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1234) ((_ to_fp 11 53) x2_ack!1235)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1234)
                       ((_ to_fp 11 53) x0_ack!1237))
               ((_ to_fp 11 53) x0_ack!1237))
       ((_ to_fp 11 53) x1_ack!1234)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1234)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1234)
                       ((_ to_fp 11 53) x0_ack!1237)))
       ((_ to_fp 11 53) x0_ack!1237)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1235)
                       ((_ to_fp 11 53) x1_ack!1234))
               ((_ to_fp 11 53) x1_ack!1234))
       ((_ to_fp 11 53) x2_ack!1235)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1235)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1235)
                       ((_ to_fp 11 53) x1_ack!1234)))
       ((_ to_fp 11 53) x1_ack!1234)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1234)
                    ((_ to_fp 11 53) x0_ack!1237))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1235)
                    ((_ to_fp 11 53) x1_ack!1234))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1236) ((_ to_fp 11 53) x0_ack!1237))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1236) ((_ to_fp 11 53) x2_ack!1235))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1236) ((_ to_fp 11 53) x0_ack!1237))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1236) ((_ to_fp 11 53) x1_ack!1234)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1234) ((_ to_fp 11 53) xx_ack!1236))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1235)
               ((_ to_fp 11 53) x1_ack!1234))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
