(declare-fun x1_ack!3467 () (_ BitVec 64))
(declare-fun x0_ack!3471 () (_ BitVec 64))
(declare-fun y0_ack!3468 () (_ BitVec 64))
(declare-fun x_ack!3469 () (_ BitVec 64))
(declare-fun y_ack!3470 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3471) ((_ to_fp 11 53) x1_ack!3467))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3468) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3469) ((_ to_fp 11 53) x0_ack!3471))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3469) ((_ to_fp 11 53) x1_ack!3467))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3470) ((_ to_fp 11 53) y0_ack!3468))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3470) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3467)
                       ((_ to_fp 11 53) x0_ack!3471))
               ((_ to_fp 11 53) x0_ack!3471))
       ((_ to_fp 11 53) x1_ack!3467)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3467)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3467)
                       ((_ to_fp 11 53) x0_ack!3471)))
       ((_ to_fp 11 53) x0_ack!3471)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3468))
               ((_ to_fp 11 53) y0_ack!3468))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3468)))
       ((_ to_fp 11 53) y0_ack!3468)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3470)
                       ((_ to_fp 11 53) y0_ack!3468))
               ((_ to_fp 11 53) y0_ack!3468))
       ((_ to_fp 11 53) y_ack!3470)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3470)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3470)
                       ((_ to_fp 11 53) y0_ack!3468)))
       ((_ to_fp 11 53) y0_ack!3468)))

(check-sat)
(exit)
