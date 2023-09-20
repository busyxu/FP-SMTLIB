(declare-fun x1_ack!2636 () (_ BitVec 64))
(declare-fun x0_ack!2640 () (_ BitVec 64))
(declare-fun y0_ack!2637 () (_ BitVec 64))
(declare-fun x_ack!2638 () (_ BitVec 64))
(declare-fun y_ack!2639 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2640) ((_ to_fp 11 53) x1_ack!2636))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2637) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2638) ((_ to_fp 11 53) x0_ack!2640))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2638) ((_ to_fp 11 53) x1_ack!2636))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2639) ((_ to_fp 11 53) y0_ack!2637))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2639) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2636)
                       ((_ to_fp 11 53) x0_ack!2640))
               ((_ to_fp 11 53) x0_ack!2640))
       ((_ to_fp 11 53) x1_ack!2636)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2636)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2636)
                       ((_ to_fp 11 53) x0_ack!2640)))
       ((_ to_fp 11 53) x0_ack!2640)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2637))
               ((_ to_fp 11 53) y0_ack!2637))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2637)))
       ((_ to_fp 11 53) y0_ack!2637)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!2639)
          ((_ to_fp 11 53) y0_ack!2637))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!2637))))

(check-sat)
(exit)
