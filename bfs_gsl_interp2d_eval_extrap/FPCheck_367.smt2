(declare-fun x1_ack!3914 () (_ BitVec 64))
(declare-fun x0_ack!3918 () (_ BitVec 64))
(declare-fun y0_ack!3915 () (_ BitVec 64))
(declare-fun x_ack!3916 () (_ BitVec 64))
(declare-fun y_ack!3917 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3918) ((_ to_fp 11 53) x1_ack!3914))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3915) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3916) ((_ to_fp 11 53) x0_ack!3918)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3917) ((_ to_fp 11 53) y0_ack!3915))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3917) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3914)
                       ((_ to_fp 11 53) x0_ack!3918))
               ((_ to_fp 11 53) x0_ack!3918))
       ((_ to_fp 11 53) x1_ack!3914)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3914)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3914)
                       ((_ to_fp 11 53) x0_ack!3918)))
       ((_ to_fp 11 53) x0_ack!3918)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3916)
                           ((_ to_fp 11 53) x0_ack!3918))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3914)
                           ((_ to_fp 11 53) x0_ack!3918)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3916)
                           ((_ to_fp 11 53) x0_ack!3918))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3914)
                           ((_ to_fp 11 53) x0_ack!3918)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (FPCHECK_FSUB_OVERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!3916)
                  ((_ to_fp 11 53) x0_ack!3918))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!3914)
                  ((_ to_fp 11 53) x0_ack!3918)))))

(check-sat)
(exit)
