(declare-fun x1_ack!4296 () (_ BitVec 64))
(declare-fun x0_ack!4300 () (_ BitVec 64))
(declare-fun y0_ack!4297 () (_ BitVec 64))
(declare-fun x_ack!4298 () (_ BitVec 64))
(declare-fun y_ack!4299 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4300) ((_ to_fp 11 53) x1_ack!4296))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4297) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4298) ((_ to_fp 11 53) x0_ack!4300)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4299) ((_ to_fp 11 53) y0_ack!4297))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!4299) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4296)
                       ((_ to_fp 11 53) x0_ack!4300))
               ((_ to_fp 11 53) x0_ack!4300))
       ((_ to_fp 11 53) x1_ack!4296)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4296)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4296)
                       ((_ to_fp 11 53) x0_ack!4300)))
       ((_ to_fp 11 53) x0_ack!4300)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4297))
               ((_ to_fp 11 53) y0_ack!4297))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4297)))
       ((_ to_fp 11 53) y0_ack!4297)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4298)
                       ((_ to_fp 11 53) x0_ack!4300))
               ((_ to_fp 11 53) x0_ack!4300))
       ((_ to_fp 11 53) x_ack!4298)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!4298)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4298)
                       ((_ to_fp 11 53) x0_ack!4300)))
       ((_ to_fp 11 53) x0_ack!4300)))
(assert (FPCHECK_FSUB_ACCURACY y_ack!4299 y0_ack!4297))

(check-sat)
(exit)
