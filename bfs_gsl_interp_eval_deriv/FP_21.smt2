(declare-fun x1_ack!435 () (_ BitVec 64))
(declare-fun x0_ack!438 () (_ BitVec 64))
(declare-fun x2_ack!436 () (_ BitVec 64))
(declare-fun xx_ack!437 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!438) ((_ to_fp 11 53) x1_ack!435)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!435) ((_ to_fp 11 53) x2_ack!436)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!435)
                       ((_ to_fp 11 53) x0_ack!438))
               ((_ to_fp 11 53) x0_ack!438))
       ((_ to_fp 11 53) x1_ack!435)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!435)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!435)
                       ((_ to_fp 11 53) x0_ack!438)))
       ((_ to_fp 11 53) x0_ack!438)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!436)
                       ((_ to_fp 11 53) x1_ack!435))
               ((_ to_fp 11 53) x1_ack!435))
       ((_ to_fp 11 53) x2_ack!436)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!436)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!436)
                       ((_ to_fp 11 53) x1_ack!435)))
       ((_ to_fp 11 53) x1_ack!435)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!435)
                    ((_ to_fp 11 53) x0_ack!438))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!436)
                    ((_ to_fp 11 53) x1_ack!435))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!437) ((_ to_fp 11 53) x0_ack!438))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!437) ((_ to_fp 11 53) x2_ack!436))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!437) ((_ to_fp 11 53) x0_ack!438))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!437) ((_ to_fp 11 53) x1_ack!435)))

(check-sat)
(exit)
