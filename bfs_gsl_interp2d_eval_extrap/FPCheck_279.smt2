(declare-fun x1_ack!2888 () (_ BitVec 64))
(declare-fun x0_ack!2894 () (_ BitVec 64))
(declare-fun y0_ack!2889 () (_ BitVec 64))
(declare-fun x_ack!2892 () (_ BitVec 64))
(declare-fun y_ack!2893 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z3_ack!2891 () (_ BitVec 64))
(declare-fun z0_ack!2890 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2894) ((_ to_fp 11 53) x1_ack!2888))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2889) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2892) ((_ to_fp 11 53) x0_ack!2894))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2892) ((_ to_fp 11 53) x1_ack!2888))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2893) ((_ to_fp 11 53) y0_ack!2889))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2893) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2888)
                       ((_ to_fp 11 53) x0_ack!2894))
               ((_ to_fp 11 53) x0_ack!2894))
       ((_ to_fp 11 53) x1_ack!2888)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2888)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2888)
                       ((_ to_fp 11 53) x0_ack!2894)))
       ((_ to_fp 11 53) x0_ack!2894)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2889))
               ((_ to_fp 11 53) y0_ack!2889))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2889)))
       ((_ to_fp 11 53) y0_ack!2889)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!2892)
                           ((_ to_fp 11 53) x0_ack!2894))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!2888)
                           ((_ to_fp 11 53) x0_ack!2894))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!2893)
                                   ((_ to_fp 11 53) y0_ack!2889))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!2889))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z0_ack!2890))))
  (FPCHECK_FADD_OVERFLOW
    a!3
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!2)
            ((_ to_fp 11 53) z3_ack!2891))))))

(check-sat)
(exit)
