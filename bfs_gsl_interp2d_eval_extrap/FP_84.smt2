(declare-fun x1_ack!3562 () (_ BitVec 64))
(declare-fun x0_ack!3566 () (_ BitVec 64))
(declare-fun y0_ack!3563 () (_ BitVec 64))
(declare-fun x_ack!3564 () (_ BitVec 64))
(declare-fun y_ack!3565 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3566) ((_ to_fp 11 53) x1_ack!3562))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3563) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3564) ((_ to_fp 11 53) x0_ack!3566)))
(assert (fp.lt ((_ to_fp 11 53) y_ack!3565) ((_ to_fp 11 53) y0_ack!3563)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3562)
                       ((_ to_fp 11 53) x0_ack!3566))
               ((_ to_fp 11 53) x0_ack!3566))
       ((_ to_fp 11 53) x1_ack!3562)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3562)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3562)
                       ((_ to_fp 11 53) x0_ack!3566)))
       ((_ to_fp 11 53) x0_ack!3566)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3565)
                       ((_ to_fp 11 53) y0_ack!3563))
               ((_ to_fp 11 53) y0_ack!3563))
       ((_ to_fp 11 53) y_ack!3565)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3565)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3565)
                       ((_ to_fp 11 53) y0_ack!3563)))
       ((_ to_fp 11 53) y0_ack!3563)))

(check-sat)
(exit)
