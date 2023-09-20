(declare-fun x1_ack!4161 () (_ BitVec 64))
(declare-fun x0_ack!4169 () (_ BitVec 64))
(declare-fun y0_ack!4162 () (_ BitVec 64))
(declare-fun x_ack!4167 () (_ BitVec 64))
(declare-fun y_ack!4168 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z2_ack!4165 () (_ BitVec 64))
(declare-fun z1_ack!4164 () (_ BitVec 64))
(declare-fun z3_ack!4166 () (_ BitVec 64))
(declare-fun z0_ack!4163 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4169) ((_ to_fp 11 53) x1_ack!4161))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4162) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4167) ((_ to_fp 11 53) x0_ack!4169)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4168) ((_ to_fp 11 53) y0_ack!4162))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!4168) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4161)
                       ((_ to_fp 11 53) x0_ack!4169))
               ((_ to_fp 11 53) x0_ack!4169))
       ((_ to_fp 11 53) x1_ack!4161)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4161)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4161)
                       ((_ to_fp 11 53) x0_ack!4169)))
       ((_ to_fp 11 53) x0_ack!4169)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4167)
                           ((_ to_fp 11 53) x0_ack!4169))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4161)
                           ((_ to_fp 11 53) x0_ack!4169)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4167)
                           ((_ to_fp 11 53) x0_ack!4169))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4161)
                           ((_ to_fp 11 53) x0_ack!4169)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4167)
                           ((_ to_fp 11 53) x0_ack!4169))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4161)
                           ((_ to_fp 11 53) x0_ack!4169))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4168)
                           ((_ to_fp 11 53) y0_ack!4162))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4162)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z0_ack!4163)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z3_ack!4166)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z1_ack!4164))))
  (FPCHECK_FADD_OVERFLOW
    (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven a!3 a!4) a!5)
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!2)
            ((_ to_fp 11 53) z2_ack!4165))))))

(check-sat)
(exit)
