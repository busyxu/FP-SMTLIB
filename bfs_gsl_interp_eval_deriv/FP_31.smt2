(declare-fun x1_ack!992 () (_ BitVec 64))
(declare-fun x0_ack!995 () (_ BitVec 64))
(declare-fun x2_ack!993 () (_ BitVec 64))
(declare-fun xx_ack!994 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!995) ((_ to_fp 11 53) x1_ack!992)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!992) ((_ to_fp 11 53) x2_ack!993)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!992)
                       ((_ to_fp 11 53) x0_ack!995))
               ((_ to_fp 11 53) x0_ack!995))
       ((_ to_fp 11 53) x1_ack!992)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!992)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!992)
                       ((_ to_fp 11 53) x0_ack!995)))
       ((_ to_fp 11 53) x0_ack!995)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!993)
                       ((_ to_fp 11 53) x1_ack!992))
               ((_ to_fp 11 53) x1_ack!992))
       ((_ to_fp 11 53) x2_ack!993)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!993)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!993)
                       ((_ to_fp 11 53) x1_ack!992)))
       ((_ to_fp 11 53) x1_ack!992)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!992)
                    ((_ to_fp 11 53) x0_ack!995))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!993)
                    ((_ to_fp 11 53) x1_ack!992))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!994) ((_ to_fp 11 53) x0_ack!995))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!994) ((_ to_fp 11 53) x2_ack!993))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!994) ((_ to_fp 11 53) x0_ack!995))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!994) ((_ to_fp 11 53) x1_ack!992))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!992)
               ((_ to_fp 11 53) x0_ack!995))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
