(declare-fun x1_ack!3441 () (_ BitVec 64))
(declare-fun x0_ack!3448 () (_ BitVec 64))
(declare-fun x2_ack!3442 () (_ BitVec 64))
(declare-fun b_ack!3447 () (_ BitVec 64))
(declare-fun a_ack!3446 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!3443 () (_ BitVec 64))
(declare-fun y1_ack!3444 () (_ BitVec 64))
(declare-fun y2_ack!3445 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3448) ((_ to_fp 11 53) x1_ack!3441)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3441) ((_ to_fp 11 53) x2_ack!3442)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3441)
                       ((_ to_fp 11 53) x0_ack!3448))
               ((_ to_fp 11 53) x0_ack!3448))
       ((_ to_fp 11 53) x1_ack!3441)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3441)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3441)
                       ((_ to_fp 11 53) x0_ack!3448)))
       ((_ to_fp 11 53) x0_ack!3448)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3442)
                       ((_ to_fp 11 53) x1_ack!3441))
               ((_ to_fp 11 53) x1_ack!3441))
       ((_ to_fp 11 53) x2_ack!3442)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3442)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3442)
                       ((_ to_fp 11 53) x1_ack!3441)))
       ((_ to_fp 11 53) x1_ack!3441)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3441)
                    ((_ to_fp 11 53) x0_ack!3448))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3442)
                    ((_ to_fp 11 53) x1_ack!3441))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3446) ((_ to_fp 11 53) b_ack!3447))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3446) ((_ to_fp 11 53) x0_ack!3448))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3447) ((_ to_fp 11 53) x2_ack!3442))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3446) ((_ to_fp 11 53) b_ack!3447))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3446) ((_ to_fp 11 53) x0_ack!3448))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3446) ((_ to_fp 11 53) x1_ack!3441)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3441) ((_ to_fp 11 53) a_ack!3446))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3447) ((_ to_fp 11 53) x1_ack!3441))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!3447) ((_ to_fp 11 53) x2_ack!3442)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3442)
                    ((_ to_fp 11 53) x1_ack!3441))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3445)
                           ((_ to_fp 11 53) y1_ack!3444))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3442)
                                   ((_ to_fp 11 53) x1_ack!3441)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3444)
                           ((_ to_fp 11 53) y0_ack!3443))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3441)
                                   ((_ to_fp 11 53) x0_ack!3448)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3442)
                                   ((_ to_fp 11 53) x1_ack!3441))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3441)
                                   ((_ to_fp 11 53) x0_ack!3448))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FADD_OVERFLOW #x0000000000000000 a!4))))

(check-sat)
(exit)
