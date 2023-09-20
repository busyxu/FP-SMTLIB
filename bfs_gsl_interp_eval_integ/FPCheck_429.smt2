(declare-fun x1_ack!5406 () (_ BitVec 64))
(declare-fun x0_ack!5413 () (_ BitVec 64))
(declare-fun x2_ack!5407 () (_ BitVec 64))
(declare-fun b_ack!5412 () (_ BitVec 64))
(declare-fun a_ack!5411 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!5408 () (_ BitVec 64))
(declare-fun y1_ack!5409 () (_ BitVec 64))
(declare-fun y2_ack!5410 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5413) ((_ to_fp 11 53) x1_ack!5406)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5406) ((_ to_fp 11 53) x2_ack!5407)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5406)
                       ((_ to_fp 11 53) x0_ack!5413))
               ((_ to_fp 11 53) x0_ack!5413))
       ((_ to_fp 11 53) x1_ack!5406)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5406)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5406)
                       ((_ to_fp 11 53) x0_ack!5413)))
       ((_ to_fp 11 53) x0_ack!5413)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5407)
                       ((_ to_fp 11 53) x1_ack!5406))
               ((_ to_fp 11 53) x1_ack!5406))
       ((_ to_fp 11 53) x2_ack!5407)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5407)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5407)
                       ((_ to_fp 11 53) x1_ack!5406)))
       ((_ to_fp 11 53) x1_ack!5406)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5406)
                    ((_ to_fp 11 53) x0_ack!5413))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5407)
                    ((_ to_fp 11 53) x1_ack!5406))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5411) ((_ to_fp 11 53) b_ack!5412))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5411) ((_ to_fp 11 53) x0_ack!5413))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5412) ((_ to_fp 11 53) x2_ack!5407))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5411) ((_ to_fp 11 53) b_ack!5412))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5411) ((_ to_fp 11 53) x0_ack!5413))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5411) ((_ to_fp 11 53) x1_ack!5406))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5412) ((_ to_fp 11 53) x0_ack!5413))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5412) ((_ to_fp 11 53) x1_ack!5406)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5406) ((_ to_fp 11 53) b_ack!5412))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5406)
                    ((_ to_fp 11 53) x0_ack!5413))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!5410)
                           ((_ to_fp 11 53) y1_ack!5409))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5407)
                                   ((_ to_fp 11 53) x1_ack!5406)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!5409)
                           ((_ to_fp 11 53) y0_ack!5408))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5406)
                                   ((_ to_fp 11 53) x0_ack!5413)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5407)
                                   ((_ to_fp 11 53) x1_ack!5406))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5406)
                                   ((_ to_fp 11 53) x0_ack!5413))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) x1_ack!5406)
            ((_ to_fp 11 53) x0_ack!5413))
    a!4))))

(check-sat)
(exit)
