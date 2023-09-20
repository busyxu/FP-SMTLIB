(declare-fun x1_ack!4527 () (_ BitVec 64))
(declare-fun x0_ack!4531 () (_ BitVec 64))
(declare-fun y0_ack!4528 () (_ BitVec 64))
(declare-fun x_ack!4529 () (_ BitVec 64))
(declare-fun y_ack!4530 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4531) ((_ to_fp 11 53) x1_ack!4527))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4528) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!4529) ((_ to_fp 11 53) x0_ack!4531))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!4529) ((_ to_fp 11 53) x1_ack!4527))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!4530) ((_ to_fp 11 53) y0_ack!4528)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4527)
                       ((_ to_fp 11 53) x0_ack!4531))
               ((_ to_fp 11 53) x0_ack!4531))
       ((_ to_fp 11 53) x1_ack!4527)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4527)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4527)
                       ((_ to_fp 11 53) x0_ack!4531)))
       ((_ to_fp 11 53) x0_ack!4531)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4528))
               ((_ to_fp 11 53) y0_ack!4528))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4528)))
       ((_ to_fp 11 53) y0_ack!4528)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4530)
                           ((_ to_fp 11 53) y0_ack!4528))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4528)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4530)
                           ((_ to_fp 11 53) y0_ack!4528))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4528)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!4530)
                                   ((_ to_fp 11 53) y0_ack!4528))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!4528))))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!4529)
                    ((_ to_fp 11 53) x0_ack!4531))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4527)
                    ((_ to_fp 11 53) x0_ack!4531)))
    a!1)))

(check-sat)
(exit)
