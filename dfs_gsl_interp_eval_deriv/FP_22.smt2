(declare-fun x1_ack!475 () (_ BitVec 64))
(declare-fun x0_ack!478 () (_ BitVec 64))
(declare-fun x2_ack!476 () (_ BitVec 64))
(declare-fun xx_ack!477 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!478) ((_ to_fp 11 53) x1_ack!475)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!475) ((_ to_fp 11 53) x2_ack!476)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!475)
                       ((_ to_fp 11 53) x0_ack!478))
               ((_ to_fp 11 53) x0_ack!478))
       ((_ to_fp 11 53) x1_ack!475)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!475)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!475)
                       ((_ to_fp 11 53) x0_ack!478)))
       ((_ to_fp 11 53) x0_ack!478)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!476)
                       ((_ to_fp 11 53) x1_ack!475))
               ((_ to_fp 11 53) x1_ack!475))
       ((_ to_fp 11 53) x2_ack!476)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!476)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!476)
                       ((_ to_fp 11 53) x1_ack!475)))
       ((_ to_fp 11 53) x1_ack!475)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!475)
                    ((_ to_fp 11 53) x0_ack!478))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!476)
                    ((_ to_fp 11 53) x1_ack!475))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!477) ((_ to_fp 11 53) x0_ack!478))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!477) ((_ to_fp 11 53) x2_ack!476))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!477) ((_ to_fp 11 53) x0_ack!478))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!477) ((_ to_fp 11 53) x1_ack!475)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!475) ((_ to_fp 11 53) xx_ack!477))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!476)
               ((_ to_fp 11 53) x1_ack!475))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
