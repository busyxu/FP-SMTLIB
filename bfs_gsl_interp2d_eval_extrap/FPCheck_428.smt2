(declare-fun x1_ack!4693 () (_ BitVec 64))
(declare-fun x0_ack!4698 () (_ BitVec 64))
(declare-fun y0_ack!4694 () (_ BitVec 64))
(declare-fun x_ack!4696 () (_ BitVec 64))
(declare-fun y_ack!4697 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z1_ack!4695 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4698) ((_ to_fp 11 53) x1_ack!4693))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4694) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!4696) ((_ to_fp 11 53) x0_ack!4698))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!4696) ((_ to_fp 11 53) x1_ack!4693))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4697) ((_ to_fp 11 53) y0_ack!4694))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!4697) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4693)
                       ((_ to_fp 11 53) x0_ack!4698))
               ((_ to_fp 11 53) x0_ack!4698))
       ((_ to_fp 11 53) x1_ack!4693)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4693)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4693)
                       ((_ to_fp 11 53) x0_ack!4698)))
       ((_ to_fp 11 53) x0_ack!4698)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4694))
               ((_ to_fp 11 53) y0_ack!4694))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4694)))
       ((_ to_fp 11 53) y0_ack!4694)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!4697)
                       ((_ to_fp 11 53) y0_ack!4694))
               ((_ to_fp 11 53) y0_ack!4694))
       ((_ to_fp 11 53) y_ack!4697)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!4697)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!4697)
                       ((_ to_fp 11 53) y0_ack!4694)))
       ((_ to_fp 11 53) y0_ack!4694)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!4696)
                                   ((_ to_fp 11 53) x0_ack!4698))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4693)
                                   ((_ to_fp 11 53) x0_ack!4698))))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!4696)
                                   ((_ to_fp 11 53) x0_ack!4698))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4693)
                                   ((_ to_fp 11 53) x0_ack!4698)))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4697)
                           ((_ to_fp 11 53) y0_ack!4694))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4694)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!4697)
                                   ((_ to_fp 11 53) y0_ack!4694))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!4694))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!4696)
                                   ((_ to_fp 11 53) x0_ack!4698))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4693)
                                   ((_ to_fp 11 53) x0_ack!4698)))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4697)
                           ((_ to_fp 11 53) y0_ack!4694))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4694)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!4696)
                                   ((_ to_fp 11 53) x0_ack!4698))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4693)
                                   ((_ to_fp 11 53) x0_ack!4698))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!4697)
                                   ((_ to_fp 11 53) y0_ack!4694))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!4694))))))
  (FPCHECK_FMUL_OVERFLOW a!2 z1_ack!4695))))

(check-sat)
(exit)
