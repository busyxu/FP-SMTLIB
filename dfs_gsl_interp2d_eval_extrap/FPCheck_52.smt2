(declare-fun x1_ack!539 () (_ BitVec 64))
(declare-fun x0_ack!544 () (_ BitVec 64))
(declare-fun y0_ack!540 () (_ BitVec 64))
(declare-fun x_ack!542 () (_ BitVec 64))
(declare-fun y_ack!543 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z1_ack!541 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!544) ((_ to_fp 11 53) x1_ack!539))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!540) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!542) ((_ to_fp 11 53) x0_ack!544))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!542) ((_ to_fp 11 53) x1_ack!539))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!543) ((_ to_fp 11 53) y0_ack!540))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!543) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!539)
                       ((_ to_fp 11 53) x0_ack!544))
               ((_ to_fp 11 53) x0_ack!544))
       ((_ to_fp 11 53) x1_ack!539)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!539)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!539)
                       ((_ to_fp 11 53) x0_ack!544)))
       ((_ to_fp 11 53) x0_ack!544)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!540))
               ((_ to_fp 11 53) y0_ack!540))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!540)))
       ((_ to_fp 11 53) y0_ack!540)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!543)
                       ((_ to_fp 11 53) y0_ack!540))
               ((_ to_fp 11 53) y0_ack!540))
       ((_ to_fp 11 53) y_ack!543)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!543)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!543)
                       ((_ to_fp 11 53) y0_ack!540)))
       ((_ to_fp 11 53) y0_ack!540)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!542)
                                   ((_ to_fp 11 53) x0_ack!544))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!539)
                                   ((_ to_fp 11 53) x0_ack!544))))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!542)
                                   ((_ to_fp 11 53) x0_ack!544))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!539)
                                   ((_ to_fp 11 53) x0_ack!544)))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!543)
                           ((_ to_fp 11 53) y0_ack!540))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!540)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!543)
                                   ((_ to_fp 11 53) y0_ack!540))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!540))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!542)
                                   ((_ to_fp 11 53) x0_ack!544))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!539)
                                   ((_ to_fp 11 53) x0_ack!544)))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!543)
                           ((_ to_fp 11 53) y0_ack!540))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!540)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!542)
                                   ((_ to_fp 11 53) x0_ack!544))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!539)
                                   ((_ to_fp 11 53) x0_ack!544))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!543)
                                   ((_ to_fp 11 53) y0_ack!540))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!540))))))
  (FPCHECK_FMUL_OVERFLOW a!2 z1_ack!541))))

(check-sat)
(exit)
