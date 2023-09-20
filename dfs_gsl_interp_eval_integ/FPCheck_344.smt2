(declare-fun x1_ack!4150 () (_ BitVec 64))
(declare-fun x0_ack!4157 () (_ BitVec 64))
(declare-fun x2_ack!4151 () (_ BitVec 64))
(declare-fun b_ack!4156 () (_ BitVec 64))
(declare-fun a_ack!4155 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!4152 () (_ BitVec 64))
(declare-fun y1_ack!4153 () (_ BitVec 64))
(declare-fun y2_ack!4154 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4157) ((_ to_fp 11 53) x1_ack!4150)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4150) ((_ to_fp 11 53) x2_ack!4151)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4150)
                       ((_ to_fp 11 53) x0_ack!4157))
               ((_ to_fp 11 53) x0_ack!4157))
       ((_ to_fp 11 53) x1_ack!4150)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4150)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4150)
                       ((_ to_fp 11 53) x0_ack!4157)))
       ((_ to_fp 11 53) x0_ack!4157)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4151)
                       ((_ to_fp 11 53) x1_ack!4150))
               ((_ to_fp 11 53) x1_ack!4150))
       ((_ to_fp 11 53) x2_ack!4151)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4151)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4151)
                       ((_ to_fp 11 53) x1_ack!4150)))
       ((_ to_fp 11 53) x1_ack!4150)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4150)
                    ((_ to_fp 11 53) x0_ack!4157))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4151)
                    ((_ to_fp 11 53) x1_ack!4150))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4155) ((_ to_fp 11 53) b_ack!4156))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4155) ((_ to_fp 11 53) x0_ack!4157))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4156) ((_ to_fp 11 53) x2_ack!4151))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4155) ((_ to_fp 11 53) b_ack!4156))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4155) ((_ to_fp 11 53) x0_ack!4157))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4155) ((_ to_fp 11 53) x1_ack!4150))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4156) ((_ to_fp 11 53) x0_ack!4157))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4156) ((_ to_fp 11 53) x1_ack!4150))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4150)
                    ((_ to_fp 11 53) x0_ack!4157))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!4154)
                           ((_ to_fp 11 53) y1_ack!4153))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4151)
                                   ((_ to_fp 11 53) x1_ack!4150)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!4153)
                           ((_ to_fp 11 53) y0_ack!4152))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4150)
                                   ((_ to_fp 11 53) x0_ack!4157)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4151)
                                   ((_ to_fp 11 53) x1_ack!4150))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4150)
                                   ((_ to_fp 11 53) x0_ack!4157))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4150)
                                   ((_ to_fp 11 53) x0_ack!4157))
                           a!4)
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!4153)
                                   ((_ to_fp 11 53) y0_ack!4152))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4150)
                                   ((_ to_fp 11 53) x0_ack!4157)))
                   a!5)))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           a!6)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4155)
                                   ((_ to_fp 11 53) x0_ack!4157))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4156)
                                   ((_ to_fp 11 53) x0_ack!4157))))))
  (FPCHECK_FADD_OVERFLOW y0_ack!4152 a!7)))))))

(check-sat)
(exit)
