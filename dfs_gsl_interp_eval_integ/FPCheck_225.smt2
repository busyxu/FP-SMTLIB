(declare-fun x1_ack!2620 () (_ BitVec 64))
(declare-fun x0_ack!2627 () (_ BitVec 64))
(declare-fun x2_ack!2621 () (_ BitVec 64))
(declare-fun b_ack!2626 () (_ BitVec 64))
(declare-fun a_ack!2625 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!2622 () (_ BitVec 64))
(declare-fun y1_ack!2623 () (_ BitVec 64))
(declare-fun y2_ack!2624 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2627) ((_ to_fp 11 53) x1_ack!2620)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2620) ((_ to_fp 11 53) x2_ack!2621)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2620)
                       ((_ to_fp 11 53) x0_ack!2627))
               ((_ to_fp 11 53) x0_ack!2627))
       ((_ to_fp 11 53) x1_ack!2620)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2620)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2620)
                       ((_ to_fp 11 53) x0_ack!2627)))
       ((_ to_fp 11 53) x0_ack!2627)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2621)
                       ((_ to_fp 11 53) x1_ack!2620))
               ((_ to_fp 11 53) x1_ack!2620))
       ((_ to_fp 11 53) x2_ack!2621)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2621)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2621)
                       ((_ to_fp 11 53) x1_ack!2620)))
       ((_ to_fp 11 53) x1_ack!2620)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2620)
                    ((_ to_fp 11 53) x0_ack!2627))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2621)
                    ((_ to_fp 11 53) x1_ack!2620))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2625) ((_ to_fp 11 53) b_ack!2626))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2625) ((_ to_fp 11 53) x0_ack!2627))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2626) ((_ to_fp 11 53) x2_ack!2621))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2625) ((_ to_fp 11 53) b_ack!2626))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2625) ((_ to_fp 11 53) x0_ack!2627))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2625) ((_ to_fp 11 53) x1_ack!2620))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2626) ((_ to_fp 11 53) x0_ack!2627))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2626) ((_ to_fp 11 53) x1_ack!2620)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2620) ((_ to_fp 11 53) b_ack!2626))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2620)
                    ((_ to_fp 11 53) x0_ack!2627))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2621)
                    ((_ to_fp 11 53) x1_ack!2620))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!2624)
                           ((_ to_fp 11 53) y1_ack!2623))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2621)
                                   ((_ to_fp 11 53) x1_ack!2620)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!2623)
                           ((_ to_fp 11 53) y0_ack!2622))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2620)
                                   ((_ to_fp 11 53) x0_ack!2627)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2621)
                                   ((_ to_fp 11 53) x1_ack!2620))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2620)
                                   ((_ to_fp 11 53) x0_ack!2627))))))
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
                                   ((_ to_fp 11 53) x2_ack!2621)
                                   ((_ to_fp 11 53) x1_ack!2620))))))
  (FPCHECK_FMUL_UNDERFLOW #x3fd0000000000000 a!5)))))

(check-sat)
(exit)
