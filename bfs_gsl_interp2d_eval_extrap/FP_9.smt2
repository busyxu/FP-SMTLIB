(declare-fun x1_ack!233 () (_ BitVec 64))
(declare-fun x0_ack!237 () (_ BitVec 64))
(declare-fun y0_ack!234 () (_ BitVec 64))
(declare-fun x_ack!235 () (_ BitVec 64))
(declare-fun y_ack!236 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!237) ((_ to_fp 11 53) x1_ack!233))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!234) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!235) ((_ to_fp 11 53) x0_ack!237)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!236) ((_ to_fp 11 53) y0_ack!234))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!236) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!233)
                       ((_ to_fp 11 53) x0_ack!237))
               ((_ to_fp 11 53) x0_ack!237))
       ((_ to_fp 11 53) x1_ack!233)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!233)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!233)
                       ((_ to_fp 11 53) x0_ack!237)))
       ((_ to_fp 11 53) x0_ack!237)))

(check-sat)
(exit)
