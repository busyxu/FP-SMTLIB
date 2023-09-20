(declare-fun x1_ack!3168 () (_ BitVec 64))
(declare-fun x0_ack!3176 () (_ BitVec 64))
(declare-fun y0_ack!3169 () (_ BitVec 64))
(declare-fun x_ack!3174 () (_ BitVec 64))
(declare-fun y_ack!3175 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z2_ack!3172 () (_ BitVec 64))
(declare-fun z1_ack!3171 () (_ BitVec 64))
(declare-fun z3_ack!3173 () (_ BitVec 64))
(declare-fun z0_ack!3170 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3176) ((_ to_fp 11 53) x1_ack!3168))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3169) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3174) ((_ to_fp 11 53) x0_ack!3176))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3174) ((_ to_fp 11 53) x1_ack!3168))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3175) ((_ to_fp 11 53) y0_ack!3169))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3175) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3168)
                       ((_ to_fp 11 53) x0_ack!3176))
               ((_ to_fp 11 53) x0_ack!3176))
       ((_ to_fp 11 53) x1_ack!3168)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3168)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3168)
                       ((_ to_fp 11 53) x0_ack!3176)))
       ((_ to_fp 11 53) x0_ack!3176)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3169))
               ((_ to_fp 11 53) y0_ack!3169))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3169)))
       ((_ to_fp 11 53) y0_ack!3169)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3174)
                           ((_ to_fp 11 53) x0_ack!3176))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3168)
                           ((_ to_fp 11 53) x0_ack!3176))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!3175)
                           ((_ to_fp 11 53) y0_ack!3169))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!3169)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z0_ack!3170)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z3_ack!3173)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z1_ack!3171))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven a!3 a!4) a!5)
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!2)
            ((_ to_fp 11 53) z2_ack!3172))))))

(check-sat)
(exit)
