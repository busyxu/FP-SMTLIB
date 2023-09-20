(declare-fun x1_ack!1397 () (_ BitVec 64))
(declare-fun x0_ack!1400 () (_ BitVec 64))
(declare-fun x2_ack!1398 () (_ BitVec 64))
(declare-fun xx_ack!1399 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1400) ((_ to_fp 11 53) x1_ack!1397)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1397) ((_ to_fp 11 53) x2_ack!1398)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1397)
                       ((_ to_fp 11 53) x0_ack!1400))
               ((_ to_fp 11 53) x0_ack!1400))
       ((_ to_fp 11 53) x1_ack!1397)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1397)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1397)
                       ((_ to_fp 11 53) x0_ack!1400)))
       ((_ to_fp 11 53) x0_ack!1400)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1398)
                       ((_ to_fp 11 53) x1_ack!1397))
               ((_ to_fp 11 53) x1_ack!1397))
       ((_ to_fp 11 53) x2_ack!1398)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1398)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1398)
                       ((_ to_fp 11 53) x1_ack!1397)))
       ((_ to_fp 11 53) x1_ack!1397)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1397)
                    ((_ to_fp 11 53) x0_ack!1400))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1398)
                    ((_ to_fp 11 53) x1_ack!1397))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1399) ((_ to_fp 11 53) x0_ack!1400))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1399) ((_ to_fp 11 53) x2_ack!1398))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1399) ((_ to_fp 11 53) x0_ack!1400))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1399) ((_ to_fp 11 53) x1_ack!1397)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1397) ((_ to_fp 11 53) xx_ack!1399))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1398)
               ((_ to_fp 11 53) x1_ack!1397))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
