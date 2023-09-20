(declare-fun x1_ack!148 () (_ BitVec 64))
(declare-fun x0_ack!152 () (_ BitVec 64))
(declare-fun y0_ack!149 () (_ BitVec 64))
(declare-fun x_ack!150 () (_ BitVec 64))
(declare-fun y_ack!151 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!152) ((_ to_fp 11 53) x1_ack!148))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!149) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!150) ((_ to_fp 11 53) x0_ack!152))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!150) ((_ to_fp 11 53) x1_ack!148))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!151) ((_ to_fp 11 53) y0_ack!149))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!151) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!148)
                       ((_ to_fp 11 53) x0_ack!152))
               ((_ to_fp 11 53) x0_ack!152))
       ((_ to_fp 11 53) x1_ack!148)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!148)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!148)
                       ((_ to_fp 11 53) x0_ack!152)))
       ((_ to_fp 11 53) x0_ack!152)))

(check-sat)
(exit)
