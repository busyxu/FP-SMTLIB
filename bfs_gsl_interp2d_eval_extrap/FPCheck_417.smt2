(declare-fun x1_ack!4537 () (_ BitVec 64))
(declare-fun x0_ack!4541 () (_ BitVec 64))
(declare-fun y0_ack!4538 () (_ BitVec 64))
(declare-fun x_ack!4539 () (_ BitVec 64))
(declare-fun y_ack!4540 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4541) ((_ to_fp 11 53) x1_ack!4537))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4538) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!4539) ((_ to_fp 11 53) x0_ack!4541))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!4539) ((_ to_fp 11 53) x1_ack!4537))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!4540) ((_ to_fp 11 53) y0_ack!4538)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4537)
                       ((_ to_fp 11 53) x0_ack!4541))
               ((_ to_fp 11 53) x0_ack!4541))
       ((_ to_fp 11 53) x1_ack!4537)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4537)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4537)
                       ((_ to_fp 11 53) x0_ack!4541)))
       ((_ to_fp 11 53) x0_ack!4541)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4538))
               ((_ to_fp 11 53) y0_ack!4538))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4538)))
       ((_ to_fp 11 53) y0_ack!4538)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4540)
                           ((_ to_fp 11 53) y0_ack!4538))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4538)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4540)
                           ((_ to_fp 11 53) y0_ack!4538))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4538)))))
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
                                   ((_ to_fp 11 53) y_ack!4540)
                                   ((_ to_fp 11 53) y0_ack!4538))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!4538))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!4539)
                    ((_ to_fp 11 53) x0_ack!4541))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4537)
                    ((_ to_fp 11 53) x0_ack!4541)))
    a!1)))

(check-sat)
(exit)
