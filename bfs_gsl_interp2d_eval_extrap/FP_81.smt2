(declare-fun x1_ack!3426 () (_ BitVec 64))
(declare-fun x0_ack!3430 () (_ BitVec 64))
(declare-fun y0_ack!3427 () (_ BitVec 64))
(declare-fun x_ack!3428 () (_ BitVec 64))
(declare-fun y_ack!3429 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3430) ((_ to_fp 11 53) x1_ack!3426))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3427) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3428) ((_ to_fp 11 53) x0_ack!3430))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3428) ((_ to_fp 11 53) x1_ack!3426))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3429) ((_ to_fp 11 53) y0_ack!3427))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3429) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3426)
                       ((_ to_fp 11 53) x0_ack!3430))
               ((_ to_fp 11 53) x0_ack!3430))
       ((_ to_fp 11 53) x1_ack!3426)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3426)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3426)
                       ((_ to_fp 11 53) x0_ack!3430)))
       ((_ to_fp 11 53) x0_ack!3430)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3427))
               ((_ to_fp 11 53) y0_ack!3427))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3427)))
       ((_ to_fp 11 53) y0_ack!3427)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3429)
                       ((_ to_fp 11 53) y0_ack!3427))
               ((_ to_fp 11 53) y0_ack!3427))
       ((_ to_fp 11 53) y_ack!3429)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3429)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3429)
                       ((_ to_fp 11 53) y0_ack!3427)))
       ((_ to_fp 11 53) y0_ack!3427)))

(check-sat)
(exit)
