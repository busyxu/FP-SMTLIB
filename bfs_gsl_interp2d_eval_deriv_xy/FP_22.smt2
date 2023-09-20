(declare-fun x1_ack!662 () (_ BitVec 64))
(declare-fun x0_ack!666 () (_ BitVec 64))
(declare-fun y0_ack!663 () (_ BitVec 64))
(declare-fun x_ack!664 () (_ BitVec 64))
(declare-fun y_ack!665 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!666) ((_ to_fp 11 53) x1_ack!662))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!663) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!664) ((_ to_fp 11 53) x0_ack!666))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!664) ((_ to_fp 11 53) x1_ack!662))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!665) ((_ to_fp 11 53) y0_ack!663))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!665) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!664) ((_ to_fp 11 53) x0_ack!666))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!664) ((_ to_fp 11 53) x1_ack!662))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!665) ((_ to_fp 11 53) y0_ack!663))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!665) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!662)
                       ((_ to_fp 11 53) x0_ack!666))
               ((_ to_fp 11 53) x0_ack!666))
       ((_ to_fp 11 53) x1_ack!662)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!662)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!662)
                       ((_ to_fp 11 53) x0_ack!666)))
       ((_ to_fp 11 53) x0_ack!666)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!663))
               ((_ to_fp 11 53) y0_ack!663))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!663)))
       ((_ to_fp 11 53) y0_ack!663)))

(check-sat)
(exit)
