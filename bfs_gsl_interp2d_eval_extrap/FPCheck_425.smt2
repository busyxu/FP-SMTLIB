(declare-fun x1_ack!4658 () (_ BitVec 64))
(declare-fun x0_ack!4662 () (_ BitVec 64))
(declare-fun y0_ack!4659 () (_ BitVec 64))
(declare-fun x_ack!4660 () (_ BitVec 64))
(declare-fun y_ack!4661 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4662) ((_ to_fp 11 53) x1_ack!4658))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4659) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!4660) ((_ to_fp 11 53) x0_ack!4662))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!4660) ((_ to_fp 11 53) x1_ack!4658))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!4661) ((_ to_fp 11 53) y0_ack!4659)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4658)
                       ((_ to_fp 11 53) x0_ack!4662))
               ((_ to_fp 11 53) x0_ack!4662))
       ((_ to_fp 11 53) x1_ack!4658)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4658)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4658)
                       ((_ to_fp 11 53) x0_ack!4662)))
       ((_ to_fp 11 53) x0_ack!4662)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4659))
               ((_ to_fp 11 53) y0_ack!4659))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4659)))
       ((_ to_fp 11 53) y0_ack!4659)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4661)
                           ((_ to_fp 11 53) y0_ack!4659))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4659)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4661)
                           ((_ to_fp 11 53) y0_ack!4659))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4659)))))
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
                  ((_ to_fp 11 53) x_ack!4660)
                  ((_ to_fp 11 53) x0_ack!4662))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!4658)
                  ((_ to_fp 11 53) x0_ack!4662)))))

(check-sat)
(exit)
