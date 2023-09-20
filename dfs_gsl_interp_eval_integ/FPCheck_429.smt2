(declare-fun x1_ack!5304 () (_ BitVec 64))
(declare-fun x0_ack!5308 () (_ BitVec 64))
(declare-fun x2_ack!5305 () (_ BitVec 64))
(declare-fun b_ack!5307 () (_ BitVec 64))
(declare-fun a_ack!5306 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5308) ((_ to_fp 11 53) x1_ack!5304)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5304) ((_ to_fp 11 53) x2_ack!5305)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5304)
                       ((_ to_fp 11 53) x0_ack!5308))
               ((_ to_fp 11 53) x0_ack!5308))
       ((_ to_fp 11 53) x1_ack!5304)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5304)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5304)
                       ((_ to_fp 11 53) x0_ack!5308)))
       ((_ to_fp 11 53) x0_ack!5308)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5305)
                       ((_ to_fp 11 53) x1_ack!5304))
               ((_ to_fp 11 53) x1_ack!5304))
       ((_ to_fp 11 53) x2_ack!5305)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5305)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5305)
                       ((_ to_fp 11 53) x1_ack!5304)))
       ((_ to_fp 11 53) x1_ack!5304)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5304)
                    ((_ to_fp 11 53) x0_ack!5308))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5305)
                    ((_ to_fp 11 53) x1_ack!5304))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5306) ((_ to_fp 11 53) b_ack!5307))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5306) ((_ to_fp 11 53) x0_ack!5308))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5307) ((_ to_fp 11 53) x2_ack!5305))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5306) ((_ to_fp 11 53) b_ack!5307))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5306) ((_ to_fp 11 53) x0_ack!5308))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5306) ((_ to_fp 11 53) x1_ack!5304)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5304) ((_ to_fp 11 53) a_ack!5306))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5307) ((_ to_fp 11 53) x1_ack!5304))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5307) ((_ to_fp 11 53) x2_ack!5305)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5305)
                    ((_ to_fp 11 53) x1_ack!5304))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5306)
                       ((_ to_fp 11 53) x1_ack!5304))
               ((_ to_fp 11 53) x1_ack!5304))
       ((_ to_fp 11 53) a_ack!5306)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5306)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5306)
                       ((_ to_fp 11 53) x1_ack!5304)))
       ((_ to_fp 11 53) x1_ack!5304)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5306)
                                  ((_ to_fp 11 53) x1_ack!5304)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5306)
                                   ((_ to_fp 11 53) x1_ack!5304))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5306)
                                   ((_ to_fp 11 53) x1_ack!5304)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5306)
                           ((_ to_fp 11 53) x1_ack!5304)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5306)
                 ((_ to_fp 11 53) x1_ack!5304)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5306)
                                  ((_ to_fp 11 53) x1_ack!5304)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5306)
                                   ((_ to_fp 11 53) x1_ack!5304))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5306)
                                   ((_ to_fp 11 53) x1_ack!5304)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5306)
                           ((_ to_fp 11 53) x1_ack!5304)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5306)
                 ((_ to_fp 11 53) x1_ack!5304)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5307)
                                  ((_ to_fp 11 53) x1_ack!5304)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5307)
                                   ((_ to_fp 11 53) x1_ack!5304))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5307)
                                   ((_ to_fp 11 53) x1_ack!5304)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5307)
                           ((_ to_fp 11 53) x1_ack!5304)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5307)
                 ((_ to_fp 11 53) x1_ack!5304)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5307)
                                  ((_ to_fp 11 53) x1_ack!5304)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5307)
                                   ((_ to_fp 11 53) x1_ack!5304))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5307)
                                   ((_ to_fp 11 53) x1_ack!5304)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5307)
                           ((_ to_fp 11 53) x1_ack!5304)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5307)
                 ((_ to_fp 11 53) x1_ack!5304)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5306)
                           ((_ to_fp 11 53) x1_ack!5304))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5306)
                           ((_ to_fp 11 53) x1_ack!5304))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5307)
                           ((_ to_fp 11 53) x1_ack!5304))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5307)
                           ((_ to_fp 11 53) x1_ack!5304)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5306)
                           ((_ to_fp 11 53) x1_ack!5304))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5306)
                           ((_ to_fp 11 53) x1_ack!5304))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5307)
                           ((_ to_fp 11 53) x1_ack!5304))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5307)
                           ((_ to_fp 11 53) x1_ack!5304)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5306)
                                   ((_ to_fp 11 53) x1_ack!5304))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5306)
                                   ((_ to_fp 11 53) x1_ack!5304)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5307)
                                   ((_ to_fp 11 53) x1_ack!5304))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5307)
                                   ((_ to_fp 11 53) x1_ack!5304))))))
  (FPCHECK_FADD_OVERFLOW
    a!1
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!5306)
                    ((_ to_fp 11 53) x1_ack!5304))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!5307)
                    ((_ to_fp 11 53) x1_ack!5304))))))

(check-sat)
(exit)
