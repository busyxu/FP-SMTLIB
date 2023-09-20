(declare-fun x1_ack!3567 () (_ BitVec 64))
(declare-fun x0_ack!3571 () (_ BitVec 64))
(declare-fun y0_ack!3568 () (_ BitVec 64))
(declare-fun x_ack!3569 () (_ BitVec 64))
(declare-fun y_ack!3570 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3571) ((_ to_fp 11 53) x1_ack!3567))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3568) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3569) ((_ to_fp 11 53) x0_ack!3571)))
(assert (fp.lt ((_ to_fp 11 53) y_ack!3570) ((_ to_fp 11 53) y0_ack!3568)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3567)
                       ((_ to_fp 11 53) x0_ack!3571))
               ((_ to_fp 11 53) x0_ack!3571))
       ((_ to_fp 11 53) x1_ack!3567)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3567)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3567)
                       ((_ to_fp 11 53) x0_ack!3571)))
       ((_ to_fp 11 53) x0_ack!3571)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3570)
                       ((_ to_fp 11 53) y0_ack!3568))
               ((_ to_fp 11 53) y0_ack!3568))
       ((_ to_fp 11 53) y_ack!3570)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3570)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3570)
                       ((_ to_fp 11 53) y0_ack!3568)))
       ((_ to_fp 11 53) y0_ack!3568)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!3570)
          ((_ to_fp 11 53) y0_ack!3568))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!3568))))

(check-sat)
(exit)
