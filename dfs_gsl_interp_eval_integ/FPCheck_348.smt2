(declare-fun x1_ack!4211 () (_ BitVec 64))
(declare-fun x0_ack!4218 () (_ BitVec 64))
(declare-fun x2_ack!4212 () (_ BitVec 64))
(declare-fun b_ack!4217 () (_ BitVec 64))
(declare-fun a_ack!4216 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!4213 () (_ BitVec 64))
(declare-fun y1_ack!4214 () (_ BitVec 64))
(declare-fun y2_ack!4215 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4218) ((_ to_fp 11 53) x1_ack!4211)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4211) ((_ to_fp 11 53) x2_ack!4212)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4211)
                       ((_ to_fp 11 53) x0_ack!4218))
               ((_ to_fp 11 53) x0_ack!4218))
       ((_ to_fp 11 53) x1_ack!4211)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4211)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4211)
                       ((_ to_fp 11 53) x0_ack!4218)))
       ((_ to_fp 11 53) x0_ack!4218)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4212)
                       ((_ to_fp 11 53) x1_ack!4211))
               ((_ to_fp 11 53) x1_ack!4211))
       ((_ to_fp 11 53) x2_ack!4212)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4212)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4212)
                       ((_ to_fp 11 53) x1_ack!4211)))
       ((_ to_fp 11 53) x1_ack!4211)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4211)
                    ((_ to_fp 11 53) x0_ack!4218))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4212)
                    ((_ to_fp 11 53) x1_ack!4211))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4216) ((_ to_fp 11 53) b_ack!4217))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4216) ((_ to_fp 11 53) x0_ack!4218))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4217) ((_ to_fp 11 53) x2_ack!4212))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4216) ((_ to_fp 11 53) b_ack!4217))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4216) ((_ to_fp 11 53) x0_ack!4218))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4216) ((_ to_fp 11 53) x1_ack!4211))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4217) ((_ to_fp 11 53) x0_ack!4218))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4217) ((_ to_fp 11 53) x1_ack!4211))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4211)
                    ((_ to_fp 11 53) x0_ack!4218))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!4215)
                           ((_ to_fp 11 53) y1_ack!4214))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4212)
                                   ((_ to_fp 11 53) x1_ack!4211)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!4214)
                           ((_ to_fp 11 53) y0_ack!4213))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4211)
                                   ((_ to_fp 11 53) x0_ack!4218)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4212)
                                   ((_ to_fp 11 53) x1_ack!4211))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4211)
                                   ((_ to_fp 11 53) x0_ack!4218)))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4216)
                                   ((_ to_fp 11 53) x0_ack!4218))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4216)
                                   ((_ to_fp 11 53) x0_ack!4218)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4217)
                                   ((_ to_fp 11 53) x0_ack!4218))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4217)
                                   ((_ to_fp 11 53) x0_ack!4218))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!9 (fp.add roundNearestTiesToEven
                   a!8
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4216)
                                   ((_ to_fp 11 53) x0_ack!4218))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4217)
                                   ((_ to_fp 11 53) x0_ack!4218))))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4211)
                                   ((_ to_fp 11 53) x0_ack!4218))
                           a!4)
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!4214)
                                   ((_ to_fp 11 53) y0_ack!4213))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4211)
                                   ((_ to_fp 11 53) x0_ack!4218)))
                   a!5)))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           a!6)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4216)
                                   ((_ to_fp 11 53) x0_ack!4218))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4217)
                                   ((_ to_fp 11 53) x0_ack!4218))))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y0_ack!4213) a!7)
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x0000000000000000) a!9))))))))

(check-sat)
(exit)
