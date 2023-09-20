(declare-fun x1_ack!4272 () (_ BitVec 64))
(declare-fun x0_ack!4279 () (_ BitVec 64))
(declare-fun x2_ack!4273 () (_ BitVec 64))
(declare-fun b_ack!4278 () (_ BitVec 64))
(declare-fun a_ack!4277 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!4274 () (_ BitVec 64))
(declare-fun y1_ack!4275 () (_ BitVec 64))
(declare-fun y2_ack!4276 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4279) ((_ to_fp 11 53) x1_ack!4272)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4272) ((_ to_fp 11 53) x2_ack!4273)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4272)
                       ((_ to_fp 11 53) x0_ack!4279))
               ((_ to_fp 11 53) x0_ack!4279))
       ((_ to_fp 11 53) x1_ack!4272)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4272)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4272)
                       ((_ to_fp 11 53) x0_ack!4279)))
       ((_ to_fp 11 53) x0_ack!4279)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4273)
                       ((_ to_fp 11 53) x1_ack!4272))
               ((_ to_fp 11 53) x1_ack!4272))
       ((_ to_fp 11 53) x2_ack!4273)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4273)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4273)
                       ((_ to_fp 11 53) x1_ack!4272)))
       ((_ to_fp 11 53) x1_ack!4272)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4272)
                    ((_ to_fp 11 53) x0_ack!4279))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4273)
                    ((_ to_fp 11 53) x1_ack!4272))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4277) ((_ to_fp 11 53) b_ack!4278))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4277) ((_ to_fp 11 53) x0_ack!4279))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4278) ((_ to_fp 11 53) x2_ack!4273))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4277) ((_ to_fp 11 53) b_ack!4278))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4277) ((_ to_fp 11 53) x0_ack!4279))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4277) ((_ to_fp 11 53) x1_ack!4272))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4278) ((_ to_fp 11 53) x0_ack!4279))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4278) ((_ to_fp 11 53) x1_ack!4272))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4272)
                    ((_ to_fp 11 53) x0_ack!4279))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!4276)
                           ((_ to_fp 11 53) y1_ack!4275))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4273)
                                   ((_ to_fp 11 53) x1_ack!4272)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!4275)
                           ((_ to_fp 11 53) y0_ack!4274))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4272)
                                   ((_ to_fp 11 53) x0_ack!4279)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4273)
                                   ((_ to_fp 11 53) x1_ack!4272))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4272)
                                   ((_ to_fp 11 53) x0_ack!4279)))))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!4277)
                           ((_ to_fp 11 53) x0_ack!4279))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!4278)
                           ((_ to_fp 11 53) x0_ack!4279))))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4277)
                                   ((_ to_fp 11 53) x0_ack!4279))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4277)
                                   ((_ to_fp 11 53) x0_ack!4279)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4278)
                                   ((_ to_fp 11 53) x0_ack!4279))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4278)
                                   ((_ to_fp 11 53) x0_ack!4279))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   a!3))
      (a!10 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4277)
                                    ((_ to_fp 11 53) x0_ack!4279))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!4278)
                                    ((_ to_fp 11 53) x0_ack!4279))))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4272)
                                   ((_ to_fp 11 53) x0_ack!4279))
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!4
                            ((_ to_fp 11 53) #x0000000000000000))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x1_ack!4272)
                                    ((_ to_fp 11 53) x0_ack!4279))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!4275)
                                   ((_ to_fp 11 53) y0_ack!4274))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4272)
                                   ((_ to_fp 11 53) x0_ack!4279)))
                   a!5))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd0000000000000)
                                    a!11)
                            a!7)
                    a!9)))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!4274)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!6)
                           a!7))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven
            a!8
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    a!10))
    a!12)))))))

(check-sat)
(exit)
