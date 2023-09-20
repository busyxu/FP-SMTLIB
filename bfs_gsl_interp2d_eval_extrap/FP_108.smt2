(declare-fun x1_ack!4648 () (_ BitVec 64))
(declare-fun x0_ack!4652 () (_ BitVec 64))
(declare-fun y0_ack!4649 () (_ BitVec 64))
(declare-fun x_ack!4650 () (_ BitVec 64))
(declare-fun y_ack!4651 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4652) ((_ to_fp 11 53) x1_ack!4648))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4649) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!4650) ((_ to_fp 11 53) x0_ack!4652))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!4650) ((_ to_fp 11 53) x1_ack!4648))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!4651) ((_ to_fp 11 53) y0_ack!4649)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4648)
                       ((_ to_fp 11 53) x0_ack!4652))
               ((_ to_fp 11 53) x0_ack!4652))
       ((_ to_fp 11 53) x1_ack!4648)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4648)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4648)
                       ((_ to_fp 11 53) x0_ack!4652)))
       ((_ to_fp 11 53) x0_ack!4652)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4649))
               ((_ to_fp 11 53) y0_ack!4649))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4649)))
       ((_ to_fp 11 53) y0_ack!4649)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4651)
                           ((_ to_fp 11 53) y0_ack!4649))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4649)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4651)
                           ((_ to_fp 11 53) y0_ack!4649))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4649)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))

(check-sat)
(exit)
