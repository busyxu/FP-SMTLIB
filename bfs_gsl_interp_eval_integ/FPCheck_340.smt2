(declare-fun x1_ack!4242 () (_ BitVec 64))
(declare-fun x0_ack!4249 () (_ BitVec 64))
(declare-fun x2_ack!4243 () (_ BitVec 64))
(declare-fun b_ack!4248 () (_ BitVec 64))
(declare-fun a_ack!4247 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!4244 () (_ BitVec 64))
(declare-fun y1_ack!4245 () (_ BitVec 64))
(declare-fun y2_ack!4246 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4249) ((_ to_fp 11 53) x1_ack!4242)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4242) ((_ to_fp 11 53) x2_ack!4243)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4242)
                       ((_ to_fp 11 53) x0_ack!4249))
               ((_ to_fp 11 53) x0_ack!4249))
       ((_ to_fp 11 53) x1_ack!4242)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4242)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4242)
                       ((_ to_fp 11 53) x0_ack!4249)))
       ((_ to_fp 11 53) x0_ack!4249)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4243)
                       ((_ to_fp 11 53) x1_ack!4242))
               ((_ to_fp 11 53) x1_ack!4242))
       ((_ to_fp 11 53) x2_ack!4243)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4243)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4243)
                       ((_ to_fp 11 53) x1_ack!4242)))
       ((_ to_fp 11 53) x1_ack!4242)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4242)
                    ((_ to_fp 11 53) x0_ack!4249))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4243)
                    ((_ to_fp 11 53) x1_ack!4242))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4247) ((_ to_fp 11 53) b_ack!4248))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4247) ((_ to_fp 11 53) x0_ack!4249))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4248) ((_ to_fp 11 53) x2_ack!4243))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4247) ((_ to_fp 11 53) b_ack!4248))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4247) ((_ to_fp 11 53) x0_ack!4249))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4247) ((_ to_fp 11 53) x1_ack!4242))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4248) ((_ to_fp 11 53) x0_ack!4249))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4248) ((_ to_fp 11 53) x1_ack!4242))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4242)
                    ((_ to_fp 11 53) x0_ack!4249))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!4246)
                           ((_ to_fp 11 53) y1_ack!4245))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4243)
                                   ((_ to_fp 11 53) x1_ack!4242)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!4245)
                           ((_ to_fp 11 53) y0_ack!4244))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4242)
                                   ((_ to_fp 11 53) x0_ack!4249)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4243)
                                   ((_ to_fp 11 53) x1_ack!4242))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4242)
                                   ((_ to_fp 11 53) x0_ack!4249))))))
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
                                   ((_ to_fp 11 53) x1_ack!4242)
                                   ((_ to_fp 11 53) x0_ack!4249))
                           a!4)
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!4245)
                                   ((_ to_fp 11 53) y0_ack!4244))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4242)
                                   ((_ to_fp 11 53) x0_ack!4249)))
                   a!5)))
  (FPCHECK_FMUL_OVERFLOW #x3fe0000000000000 a!6))))))

(check-sat)
(exit)
