(declare-fun x1_ack!3500 () (_ BitVec 64))
(declare-fun x0_ack!3506 () (_ BitVec 64))
(declare-fun y0_ack!3501 () (_ BitVec 64))
(declare-fun x_ack!3504 () (_ BitVec 64))
(declare-fun y_ack!3505 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z3_ack!3503 () (_ BitVec 64))
(declare-fun z0_ack!3502 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3506) ((_ to_fp 11 53) x1_ack!3500))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3501) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3504) ((_ to_fp 11 53) x0_ack!3506))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3504) ((_ to_fp 11 53) x1_ack!3500))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3505) ((_ to_fp 11 53) y0_ack!3501))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3505) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3500)
                       ((_ to_fp 11 53) x0_ack!3506))
               ((_ to_fp 11 53) x0_ack!3506))
       ((_ to_fp 11 53) x1_ack!3500)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3500)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3500)
                       ((_ to_fp 11 53) x0_ack!3506)))
       ((_ to_fp 11 53) x0_ack!3506)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3501))
               ((_ to_fp 11 53) y0_ack!3501))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3501)))
       ((_ to_fp 11 53) y0_ack!3501)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3505)
                       ((_ to_fp 11 53) y0_ack!3501))
               ((_ to_fp 11 53) y0_ack!3501))
       ((_ to_fp 11 53) y_ack!3505)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3505)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3505)
                       ((_ to_fp 11 53) y0_ack!3501)))
       ((_ to_fp 11 53) y0_ack!3501)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3504)
                           ((_ to_fp 11 53) x0_ack!3506))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3500)
                           ((_ to_fp 11 53) x0_ack!3506))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!3505)
                                   ((_ to_fp 11 53) y0_ack!3501))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!3501))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z0_ack!3502))))
  (FPCHECK_FADD_ACCURACY
    a!3
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!2)
            ((_ to_fp 11 53) z3_ack!3503))))))

(check-sat)
(exit)
