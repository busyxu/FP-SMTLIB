(declare-fun x1_ack!4216 () (_ BitVec 64))
(declare-fun x0_ack!4220 () (_ BitVec 64))
(declare-fun y0_ack!4217 () (_ BitVec 64))
(declare-fun x_ack!4218 () (_ BitVec 64))
(declare-fun y_ack!4219 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4220) ((_ to_fp 11 53) x1_ack!4216))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4217) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4218) ((_ to_fp 11 53) x0_ack!4220)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4219) ((_ to_fp 11 53) y0_ack!4217))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!4219) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4216)
                       ((_ to_fp 11 53) x0_ack!4220))
               ((_ to_fp 11 53) x0_ack!4220))
       ((_ to_fp 11 53) x1_ack!4216)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4216)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4216)
                       ((_ to_fp 11 53) x0_ack!4220)))
       ((_ to_fp 11 53) x0_ack!4220)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4217))
               ((_ to_fp 11 53) y0_ack!4217))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4217)))
       ((_ to_fp 11 53) y0_ack!4217)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4218)
                       ((_ to_fp 11 53) x0_ack!4220))
               ((_ to_fp 11 53) x0_ack!4220))
       ((_ to_fp 11 53) x_ack!4218)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!4218)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4218)
                       ((_ to_fp 11 53) x0_ack!4220)))
       ((_ to_fp 11 53) x0_ack!4220)))

(check-sat)
(exit)
