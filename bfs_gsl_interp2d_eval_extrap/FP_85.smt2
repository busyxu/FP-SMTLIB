(declare-fun x1_ack!3607 () (_ BitVec 64))
(declare-fun x0_ack!3611 () (_ BitVec 64))
(declare-fun y0_ack!3608 () (_ BitVec 64))
(declare-fun x_ack!3609 () (_ BitVec 64))
(declare-fun y_ack!3610 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3611) ((_ to_fp 11 53) x1_ack!3607))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3608) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3609) ((_ to_fp 11 53) x0_ack!3611)))
(assert (fp.lt ((_ to_fp 11 53) y_ack!3610) ((_ to_fp 11 53) y0_ack!3608)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3607)
                       ((_ to_fp 11 53) x0_ack!3611))
               ((_ to_fp 11 53) x0_ack!3611))
       ((_ to_fp 11 53) x1_ack!3607)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3607)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3607)
                       ((_ to_fp 11 53) x0_ack!3611)))
       ((_ to_fp 11 53) x0_ack!3611)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3610)
                       ((_ to_fp 11 53) y0_ack!3608))
               ((_ to_fp 11 53) y0_ack!3608))
       ((_ to_fp 11 53) y_ack!3610)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3610)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3610)
                       ((_ to_fp 11 53) y0_ack!3608)))
       ((_ to_fp 11 53) y0_ack!3608)))

(check-sat)
(exit)
