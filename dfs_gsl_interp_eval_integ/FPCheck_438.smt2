(declare-fun x1_ack!5435 () (_ BitVec 64))
(declare-fun x0_ack!5442 () (_ BitVec 64))
(declare-fun x2_ack!5436 () (_ BitVec 64))
(declare-fun b_ack!5441 () (_ BitVec 64))
(declare-fun a_ack!5440 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!5437 () (_ BitVec 64))
(declare-fun y1_ack!5438 () (_ BitVec 64))
(declare-fun y2_ack!5439 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5442) ((_ to_fp 11 53) x1_ack!5435)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5435) ((_ to_fp 11 53) x2_ack!5436)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5435)
                       ((_ to_fp 11 53) x0_ack!5442))
               ((_ to_fp 11 53) x0_ack!5442))
       ((_ to_fp 11 53) x1_ack!5435)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5435)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5435)
                       ((_ to_fp 11 53) x0_ack!5442)))
       ((_ to_fp 11 53) x0_ack!5442)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5436)
                       ((_ to_fp 11 53) x1_ack!5435))
               ((_ to_fp 11 53) x1_ack!5435))
       ((_ to_fp 11 53) x2_ack!5436)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5436)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5436)
                       ((_ to_fp 11 53) x1_ack!5435)))
       ((_ to_fp 11 53) x1_ack!5435)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5435)
                    ((_ to_fp 11 53) x0_ack!5442))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5436)
                    ((_ to_fp 11 53) x1_ack!5435))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5440) ((_ to_fp 11 53) b_ack!5441))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5440) ((_ to_fp 11 53) x0_ack!5442))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5441) ((_ to_fp 11 53) x2_ack!5436))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5440) ((_ to_fp 11 53) b_ack!5441))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5440) ((_ to_fp 11 53) x0_ack!5442))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5440) ((_ to_fp 11 53) x1_ack!5435)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5435) ((_ to_fp 11 53) a_ack!5440))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5441) ((_ to_fp 11 53) x1_ack!5435))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5441) ((_ to_fp 11 53) x2_ack!5436)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5436)
                    ((_ to_fp 11 53) x1_ack!5435))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5440)
                       ((_ to_fp 11 53) x1_ack!5435))
               ((_ to_fp 11 53) x1_ack!5435))
       ((_ to_fp 11 53) a_ack!5440)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5440)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5440)
                       ((_ to_fp 11 53) x1_ack!5435)))
       ((_ to_fp 11 53) x1_ack!5435)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5440)
                                  ((_ to_fp 11 53) x1_ack!5435)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5440)
                                   ((_ to_fp 11 53) x1_ack!5435))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5440)
                                   ((_ to_fp 11 53) x1_ack!5435)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5440)
                           ((_ to_fp 11 53) x1_ack!5435)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5440)
                 ((_ to_fp 11 53) x1_ack!5435)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5440)
                                  ((_ to_fp 11 53) x1_ack!5435)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5440)
                                   ((_ to_fp 11 53) x1_ack!5435))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5440)
                                   ((_ to_fp 11 53) x1_ack!5435)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5440)
                           ((_ to_fp 11 53) x1_ack!5435)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5440)
                 ((_ to_fp 11 53) x1_ack!5435)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5441)
                                  ((_ to_fp 11 53) x1_ack!5435)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5441)
                                   ((_ to_fp 11 53) x1_ack!5435))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5441)
                                   ((_ to_fp 11 53) x1_ack!5435)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5441)
                           ((_ to_fp 11 53) x1_ack!5435)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5441)
                 ((_ to_fp 11 53) x1_ack!5435)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5441)
                                  ((_ to_fp 11 53) x1_ack!5435)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5441)
                                   ((_ to_fp 11 53) x1_ack!5435))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5441)
                                   ((_ to_fp 11 53) x1_ack!5435)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5441)
                           ((_ to_fp 11 53) x1_ack!5435)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5441)
                 ((_ to_fp 11 53) x1_ack!5435)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5440)
                           ((_ to_fp 11 53) x1_ack!5435))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5440)
                           ((_ to_fp 11 53) x1_ack!5435))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5441)
                           ((_ to_fp 11 53) x1_ack!5435))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5441)
                           ((_ to_fp 11 53) x1_ack!5435)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5440)
                           ((_ to_fp 11 53) x1_ack!5435))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5440)
                           ((_ to_fp 11 53) x1_ack!5435))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5441)
                           ((_ to_fp 11 53) x1_ack!5435))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5441)
                           ((_ to_fp 11 53) x1_ack!5435)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5440)
                                   ((_ to_fp 11 53) x1_ack!5435))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5440)
                                   ((_ to_fp 11 53) x1_ack!5435)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5441)
                                   ((_ to_fp 11 53) x1_ack!5435))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5441)
                                   ((_ to_fp 11 53) x1_ack!5435)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5440)
                           ((_ to_fp 11 53) x1_ack!5435))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5441)
                           ((_ to_fp 11 53) x1_ack!5435)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5440)
                                   ((_ to_fp 11 53) x1_ack!5435))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5440)
                                   ((_ to_fp 11 53) x1_ack!5435)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5441)
                                   ((_ to_fp 11 53) x1_ack!5435))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5441)
                                   ((_ to_fp 11 53) x1_ack!5435)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5440)
                           ((_ to_fp 11 53) x1_ack!5435))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5441)
                           ((_ to_fp 11 53) x1_ack!5435)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!5439)
                           ((_ to_fp 11 53) y1_ack!5438))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5436)
                                   ((_ to_fp 11 53) x1_ack!5435)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!5438)
                           ((_ to_fp 11 53) y0_ack!5437))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5435)
                                   ((_ to_fp 11 53) x0_ack!5442)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5436)
                                   ((_ to_fp 11 53) x1_ack!5435))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5435)
                                   ((_ to_fp 11 53) x0_ack!5442))))))
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
                                   ((_ to_fp 11 53) x2_ack!5436)
                                   ((_ to_fp 11 53) x1_ack!5435))))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fd0000000000000) a!5)
    (fp.add roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!5440)
                    ((_ to_fp 11 53) x1_ack!5435))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!5441)
                    ((_ to_fp 11 53) x1_ack!5435))))))))

(check-sat)
(exit)
