(declare-fun x1_ack!4683 () (_ BitVec 64))
(declare-fun x0_ack!4687 () (_ BitVec 64))
(declare-fun y0_ack!4684 () (_ BitVec 64))
(declare-fun x_ack!4685 () (_ BitVec 64))
(declare-fun y_ack!4686 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4687) ((_ to_fp 11 53) x1_ack!4683))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4684) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!4685) ((_ to_fp 11 53) x0_ack!4687))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!4685) ((_ to_fp 11 53) x1_ack!4683))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4686) ((_ to_fp 11 53) y0_ack!4684))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!4686) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4683)
                       ((_ to_fp 11 53) x0_ack!4687))
               ((_ to_fp 11 53) x0_ack!4687))
       ((_ to_fp 11 53) x1_ack!4683)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4683)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4683)
                       ((_ to_fp 11 53) x0_ack!4687)))
       ((_ to_fp 11 53) x0_ack!4687)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4684))
               ((_ to_fp 11 53) y0_ack!4684))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4684)))
       ((_ to_fp 11 53) y0_ack!4684)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!4686)
                       ((_ to_fp 11 53) y0_ack!4684))
               ((_ to_fp 11 53) y0_ack!4684))
       ((_ to_fp 11 53) y_ack!4686)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!4686)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!4686)
                       ((_ to_fp 11 53) y0_ack!4684)))
       ((_ to_fp 11 53) y0_ack!4684)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!4685)
                                   ((_ to_fp 11 53) x0_ack!4687))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4683)
                                   ((_ to_fp 11 53) x0_ack!4687))))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!4685)
                                   ((_ to_fp 11 53) x0_ack!4687))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4683)
                                   ((_ to_fp 11 53) x0_ack!4687)))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4686)
                           ((_ to_fp 11 53) y0_ack!4684))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4684)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!4686)
                                   ((_ to_fp 11 53) y0_ack!4684))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!4684))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!4685)
                                   ((_ to_fp 11 53) x0_ack!4687))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4683)
                                   ((_ to_fp 11 53) x0_ack!4687)))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4686)
                           ((_ to_fp 11 53) y0_ack!4684))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4684)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))

(check-sat)
(exit)
