(declare-fun x1_ack!3823 () (_ BitVec 64))
(declare-fun x0_ack!3828 () (_ BitVec 64))
(declare-fun y0_ack!3824 () (_ BitVec 64))
(declare-fun x_ack!3826 () (_ BitVec 64))
(declare-fun y_ack!3827 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z3_ack!3825 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3828) ((_ to_fp 11 53) x1_ack!3823))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3824) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3826) ((_ to_fp 11 53) x0_ack!3828)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3827) ((_ to_fp 11 53) y0_ack!3824))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3827) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3823)
                       ((_ to_fp 11 53) x0_ack!3828))
               ((_ to_fp 11 53) x0_ack!3828))
       ((_ to_fp 11 53) x1_ack!3823)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3823)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3823)
                       ((_ to_fp 11 53) x0_ack!3828)))
       ((_ to_fp 11 53) x0_ack!3828)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3826)
                           ((_ to_fp 11 53) x0_ack!3828))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3823)
                           ((_ to_fp 11 53) x0_ack!3828)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3826)
                           ((_ to_fp 11 53) x0_ack!3828))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3823)
                           ((_ to_fp 11 53) x0_ack!3828)))))
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
                                   ((_ to_fp 11 53) y_ack!3827)
                                   ((_ to_fp 11 53) y0_ack!3824))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!3824))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!3826)
                                   ((_ to_fp 11 53) x0_ack!3828))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3823)
                                   ((_ to_fp 11 53) x0_ack!3828)))
                   a!1)))
  (FPCHECK_FMUL_OVERFLOW a!2 z3_ack!3825))))

(check-sat)
(exit)
