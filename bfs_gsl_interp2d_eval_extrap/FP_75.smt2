(declare-fun x1_ack!3104 () (_ BitVec 64))
(declare-fun x0_ack!3108 () (_ BitVec 64))
(declare-fun y0_ack!3105 () (_ BitVec 64))
(declare-fun x_ack!3106 () (_ BitVec 64))
(declare-fun y_ack!3107 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3108) ((_ to_fp 11 53) x1_ack!3104))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3105) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3106) ((_ to_fp 11 53) x0_ack!3108))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3106) ((_ to_fp 11 53) x1_ack!3104))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3107) ((_ to_fp 11 53) y0_ack!3105))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3107) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3104)
                       ((_ to_fp 11 53) x0_ack!3108))
               ((_ to_fp 11 53) x0_ack!3108))
       ((_ to_fp 11 53) x1_ack!3104)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3104)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3104)
                       ((_ to_fp 11 53) x0_ack!3108)))
       ((_ to_fp 11 53) x0_ack!3108)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3105))
               ((_ to_fp 11 53) y0_ack!3105))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3105)))
       ((_ to_fp 11 53) y0_ack!3105)))

(check-sat)
(exit)
