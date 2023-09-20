(declare-fun x1_ack!117 () (_ BitVec 64))
(declare-fun x0_ack!121 () (_ BitVec 64))
(declare-fun y0_ack!118 () (_ BitVec 64))
(declare-fun x_ack!119 () (_ BitVec 64))
(declare-fun y_ack!120 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!121) ((_ to_fp 11 53) x1_ack!117))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!118) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!119) ((_ to_fp 11 53) x0_ack!121))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!119) ((_ to_fp 11 53) x1_ack!117))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!120) ((_ to_fp 11 53) y0_ack!118))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!120) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!119) ((_ to_fp 11 53) x0_ack!121))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!119) ((_ to_fp 11 53) x1_ack!117))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!120) ((_ to_fp 11 53) y0_ack!118))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!120) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!117)
                       ((_ to_fp 11 53) x0_ack!121))
               ((_ to_fp 11 53) x0_ack!121))
       ((_ to_fp 11 53) x1_ack!117)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!117)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!117)
                       ((_ to_fp 11 53) x0_ack!121)))
       ((_ to_fp 11 53) x0_ack!121)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!118))
               ((_ to_fp 11 53) y0_ack!118))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!118)))
       ((_ to_fp 11 53) y0_ack!118)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!120)
          ((_ to_fp 11 53) y0_ack!118))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!118))))

(check-sat)
(exit)
