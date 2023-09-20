(declare-fun x1_ack!2807 () (_ BitVec 64))
(declare-fun x0_ack!2814 () (_ BitVec 64))
(declare-fun x2_ack!2808 () (_ BitVec 64))
(declare-fun b_ack!2813 () (_ BitVec 64))
(declare-fun a_ack!2812 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!2809 () (_ BitVec 64))
(declare-fun y1_ack!2810 () (_ BitVec 64))
(declare-fun y2_ack!2811 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2814) ((_ to_fp 11 53) x1_ack!2807)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2807) ((_ to_fp 11 53) x2_ack!2808)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2807)
                       ((_ to_fp 11 53) x0_ack!2814))
               ((_ to_fp 11 53) x0_ack!2814))
       ((_ to_fp 11 53) x1_ack!2807)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2807)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2807)
                       ((_ to_fp 11 53) x0_ack!2814)))
       ((_ to_fp 11 53) x0_ack!2814)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2808)
                       ((_ to_fp 11 53) x1_ack!2807))
               ((_ to_fp 11 53) x1_ack!2807))
       ((_ to_fp 11 53) x2_ack!2808)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2808)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2808)
                       ((_ to_fp 11 53) x1_ack!2807)))
       ((_ to_fp 11 53) x1_ack!2807)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2807)
                    ((_ to_fp 11 53) x0_ack!2814))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2808)
                    ((_ to_fp 11 53) x1_ack!2807))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2812) ((_ to_fp 11 53) b_ack!2813))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2812) ((_ to_fp 11 53) x0_ack!2814))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2813) ((_ to_fp 11 53) x2_ack!2808))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2812) ((_ to_fp 11 53) b_ack!2813))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2812) ((_ to_fp 11 53) x0_ack!2814))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2812) ((_ to_fp 11 53) x1_ack!2807))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2813) ((_ to_fp 11 53) x0_ack!2814))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2813) ((_ to_fp 11 53) x1_ack!2807)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2807) ((_ to_fp 11 53) b_ack!2813))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2807)
                    ((_ to_fp 11 53) x0_ack!2814))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2808)
                    ((_ to_fp 11 53) x1_ack!2807))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!2811)
                           ((_ to_fp 11 53) y1_ack!2810))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2808)
                                   ((_ to_fp 11 53) x1_ack!2807)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!2810)
                           ((_ to_fp 11 53) y0_ack!2809))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2807)
                                   ((_ to_fp 11 53) x0_ack!2814)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2808)
                                   ((_ to_fp 11 53) x1_ack!2807))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2807)
                                   ((_ to_fp 11 53) x0_ack!2814)))))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2807)
                                   ((_ to_fp 11 53) x1_ack!2807))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2807)
                                   ((_ to_fp 11 53) x1_ack!2807)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2813)
                                   ((_ to_fp 11 53) x1_ack!2807))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2813)
                                   ((_ to_fp 11 53) x1_ack!2807))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2808)
                                   ((_ to_fp 11 53) x1_ack!2807))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           a!5)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2807)
                                   ((_ to_fp 11 53) x1_ack!2807))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2813)
                                   ((_ to_fp 11 53) x1_ack!2807))))))
  (FPCHECK_FMUL_ACCURACY a!6 a!7))))))

(check-sat)
(exit)
