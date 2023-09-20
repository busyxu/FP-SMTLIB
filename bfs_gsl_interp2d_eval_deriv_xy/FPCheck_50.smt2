(declare-fun x1_ack!567 () (_ BitVec 64))
(declare-fun x0_ack!571 () (_ BitVec 64))
(declare-fun y0_ack!568 () (_ BitVec 64))
(declare-fun x_ack!569 () (_ BitVec 64))
(declare-fun y_ack!570 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!571) ((_ to_fp 11 53) x1_ack!567))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!568) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!569) ((_ to_fp 11 53) x0_ack!571))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!569) ((_ to_fp 11 53) x1_ack!567))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!570) ((_ to_fp 11 53) y0_ack!568))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!570) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!569) ((_ to_fp 11 53) x0_ack!571))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!569) ((_ to_fp 11 53) x1_ack!567))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!570) ((_ to_fp 11 53) y0_ack!568))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!570) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!567)
                       ((_ to_fp 11 53) x0_ack!571))
               ((_ to_fp 11 53) x0_ack!571))
       ((_ to_fp 11 53) x1_ack!567)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!567)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!567)
                       ((_ to_fp 11 53) x0_ack!571)))
       ((_ to_fp 11 53) x0_ack!571)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!568))
               ((_ to_fp 11 53) y0_ack!568))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!568)))
       ((_ to_fp 11 53) y0_ack!568)))
(assert (FPCHECK_FDIV_OVERFLOW
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!567)
          ((_ to_fp 11 53) x0_ack!571))))

(check-sat)
(exit)
