(declare-fun x1_ack!152 () (_ BitVec 64))
(declare-fun x0_ack!156 () (_ BitVec 64))
(declare-fun y0_ack!153 () (_ BitVec 64))
(declare-fun x_ack!154 () (_ BitVec 64))
(declare-fun y_ack!155 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!156) ((_ to_fp 11 53) x1_ack!152))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!153) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!154) ((_ to_fp 11 53) x0_ack!156))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!154) ((_ to_fp 11 53) x1_ack!152))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!155) ((_ to_fp 11 53) y0_ack!153))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!155) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!154) ((_ to_fp 11 53) x0_ack!156))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!154) ((_ to_fp 11 53) x1_ack!152))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!155) ((_ to_fp 11 53) y0_ack!153))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!155) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!152)
                       ((_ to_fp 11 53) x0_ack!156))
               ((_ to_fp 11 53) x0_ack!156))
       ((_ to_fp 11 53) x1_ack!152)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!152)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!152)
                       ((_ to_fp 11 53) x0_ack!156)))
       ((_ to_fp 11 53) x0_ack!156)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!153))
               ((_ to_fp 11 53) y0_ack!153))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!153)))
       ((_ to_fp 11 53) y0_ack!153)))

(check-sat)
(exit)
