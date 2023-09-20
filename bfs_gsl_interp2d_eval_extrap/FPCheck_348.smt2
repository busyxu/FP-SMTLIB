(declare-fun x1_ack!3667 () (_ BitVec 64))
(declare-fun x0_ack!3671 () (_ BitVec 64))
(declare-fun y0_ack!3668 () (_ BitVec 64))
(declare-fun x_ack!3669 () (_ BitVec 64))
(declare-fun y_ack!3670 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3671) ((_ to_fp 11 53) x1_ack!3667))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3668) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3669) ((_ to_fp 11 53) x0_ack!3671)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3670) ((_ to_fp 11 53) y0_ack!3668))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3670) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3667)
                       ((_ to_fp 11 53) x0_ack!3671))
               ((_ to_fp 11 53) x0_ack!3671))
       ((_ to_fp 11 53) x1_ack!3667)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3667)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3667)
                       ((_ to_fp 11 53) x0_ack!3671)))
       ((_ to_fp 11 53) x0_ack!3671)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3669)
                           ((_ to_fp 11 53) x0_ack!3671))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3667)
                           ((_ to_fp 11 53) x0_ack!3671)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3669)
                           ((_ to_fp 11 53) x0_ack!3671))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3667)
                           ((_ to_fp 11 53) x0_ack!3671)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (FPCHECK_FSUB_ACCURACY
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!3670)
                  ((_ to_fp 11 53) y0_ack!3668))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!3668)))))

(check-sat)
(exit)
