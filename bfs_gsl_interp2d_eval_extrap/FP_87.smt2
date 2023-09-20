(declare-fun x1_ack!3702 () (_ BitVec 64))
(declare-fun x0_ack!3706 () (_ BitVec 64))
(declare-fun y0_ack!3703 () (_ BitVec 64))
(declare-fun x_ack!3704 () (_ BitVec 64))
(declare-fun y_ack!3705 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3706) ((_ to_fp 11 53) x1_ack!3702))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3703) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3704) ((_ to_fp 11 53) x0_ack!3706)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3705) ((_ to_fp 11 53) y0_ack!3703))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3705) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3702)
                       ((_ to_fp 11 53) x0_ack!3706))
               ((_ to_fp 11 53) x0_ack!3706))
       ((_ to_fp 11 53) x1_ack!3702)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3702)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3702)
                       ((_ to_fp 11 53) x0_ack!3706)))
       ((_ to_fp 11 53) x0_ack!3706)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3704)
                           ((_ to_fp 11 53) x0_ack!3706))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3702)
                           ((_ to_fp 11 53) x0_ack!3706)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3704)
                           ((_ to_fp 11 53) x0_ack!3706))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3702)
                           ((_ to_fp 11 53) x0_ack!3706)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))

(check-sat)
(exit)
