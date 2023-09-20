(declare-fun x1_ack!2433 () (_ BitVec 64))
(declare-fun x0_ack!2440 () (_ BitVec 64))
(declare-fun x2_ack!2434 () (_ BitVec 64))
(declare-fun b_ack!2439 () (_ BitVec 64))
(declare-fun a_ack!2438 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!2435 () (_ BitVec 64))
(declare-fun y1_ack!2436 () (_ BitVec 64))
(declare-fun y2_ack!2437 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2440) ((_ to_fp 11 53) x1_ack!2433)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2433) ((_ to_fp 11 53) x2_ack!2434)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2433)
                       ((_ to_fp 11 53) x0_ack!2440))
               ((_ to_fp 11 53) x0_ack!2440))
       ((_ to_fp 11 53) x1_ack!2433)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2433)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2433)
                       ((_ to_fp 11 53) x0_ack!2440)))
       ((_ to_fp 11 53) x0_ack!2440)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2434)
                       ((_ to_fp 11 53) x1_ack!2433))
               ((_ to_fp 11 53) x1_ack!2433))
       ((_ to_fp 11 53) x2_ack!2434)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2434)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2434)
                       ((_ to_fp 11 53) x1_ack!2433)))
       ((_ to_fp 11 53) x1_ack!2433)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2433)
                    ((_ to_fp 11 53) x0_ack!2440))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2434)
                    ((_ to_fp 11 53) x1_ack!2433))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2438) ((_ to_fp 11 53) b_ack!2439))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2438) ((_ to_fp 11 53) x0_ack!2440))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2439) ((_ to_fp 11 53) x2_ack!2434))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2438) ((_ to_fp 11 53) b_ack!2439))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2438) ((_ to_fp 11 53) x0_ack!2440))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2438) ((_ to_fp 11 53) x1_ack!2433)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2433) ((_ to_fp 11 53) a_ack!2438))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2439) ((_ to_fp 11 53) x1_ack!2433))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2439) ((_ to_fp 11 53) x2_ack!2434))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2434)
                    ((_ to_fp 11 53) x1_ack!2433))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!2437)
                           ((_ to_fp 11 53) y1_ack!2436))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2434)
                                   ((_ to_fp 11 53) x1_ack!2433)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!2436)
                           ((_ to_fp 11 53) y0_ack!2435))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2433)
                                   ((_ to_fp 11 53) x0_ack!2440)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2434)
                                   ((_ to_fp 11 53) x1_ack!2433))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2433)
                                   ((_ to_fp 11 53) x0_ack!2440))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_ZERO
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2434)
                    ((_ to_fp 11 53) x1_ack!2433)))))))

(check-sat)
(exit)
