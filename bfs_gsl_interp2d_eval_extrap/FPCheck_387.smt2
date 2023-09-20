(declare-fun x1_ack!4197 () (_ BitVec 64))
(declare-fun x0_ack!4205 () (_ BitVec 64))
(declare-fun y0_ack!4198 () (_ BitVec 64))
(declare-fun x_ack!4203 () (_ BitVec 64))
(declare-fun y_ack!4204 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z2_ack!4201 () (_ BitVec 64))
(declare-fun z1_ack!4200 () (_ BitVec 64))
(declare-fun z3_ack!4202 () (_ BitVec 64))
(declare-fun z0_ack!4199 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4205) ((_ to_fp 11 53) x1_ack!4197))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4198) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4203) ((_ to_fp 11 53) x0_ack!4205)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4204) ((_ to_fp 11 53) y0_ack!4198))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!4204) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4197)
                       ((_ to_fp 11 53) x0_ack!4205))
               ((_ to_fp 11 53) x0_ack!4205))
       ((_ to_fp 11 53) x1_ack!4197)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4197)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4197)
                       ((_ to_fp 11 53) x0_ack!4205)))
       ((_ to_fp 11 53) x0_ack!4205)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4203)
                           ((_ to_fp 11 53) x0_ack!4205))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4197)
                           ((_ to_fp 11 53) x0_ack!4205)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4203)
                           ((_ to_fp 11 53) x0_ack!4205))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4197)
                           ((_ to_fp 11 53) x0_ack!4205)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4203)
                           ((_ to_fp 11 53) x0_ack!4205))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4197)
                           ((_ to_fp 11 53) x0_ack!4205))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4204)
                           ((_ to_fp 11 53) y0_ack!4198))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4198)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z0_ack!4199)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z3_ack!4202)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z1_ack!4200))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven a!3 a!4) a!5)
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!2)
            ((_ to_fp 11 53) z2_ack!4201))))))

(check-sat)
(exit)
