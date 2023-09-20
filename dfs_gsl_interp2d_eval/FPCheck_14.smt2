(declare-fun x1_ack!142 () (_ BitVec 64))
(declare-fun x0_ack!146 () (_ BitVec 64))
(declare-fun y0_ack!143 () (_ BitVec 64))
(declare-fun x_ack!144 () (_ BitVec 64))
(declare-fun y_ack!145 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!146) ((_ to_fp 11 53) x1_ack!142))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!143) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!144) ((_ to_fp 11 53) x0_ack!146))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!144) ((_ to_fp 11 53) x1_ack!142))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!145) ((_ to_fp 11 53) y0_ack!143))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!145) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!144) ((_ to_fp 11 53) x0_ack!146))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!144) ((_ to_fp 11 53) x1_ack!142))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!145) ((_ to_fp 11 53) y0_ack!143))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!145) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!142)
                       ((_ to_fp 11 53) x0_ack!146))
               ((_ to_fp 11 53) x0_ack!146))
       ((_ to_fp 11 53) x1_ack!142)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!142)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!142)
                       ((_ to_fp 11 53) x0_ack!146)))
       ((_ to_fp 11 53) x0_ack!146)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!143))
               ((_ to_fp 11 53) y0_ack!143))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!143)))
       ((_ to_fp 11 53) y0_ack!143)))
(assert (FPCHECK_FSUB_OVERFLOW y_ack!145 y0_ack!143))

(check-sat)
(exit)
