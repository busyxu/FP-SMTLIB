(declare-fun x1_ack!5553 () (_ BitVec 64))
(declare-fun x0_ack!5557 () (_ BitVec 64))
(declare-fun x2_ack!5554 () (_ BitVec 64))
(declare-fun b_ack!5556 () (_ BitVec 64))
(declare-fun a_ack!5555 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5557) ((_ to_fp 11 53) x1_ack!5553)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5553) ((_ to_fp 11 53) x2_ack!5554)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5553)
                       ((_ to_fp 11 53) x0_ack!5557))
               ((_ to_fp 11 53) x0_ack!5557))
       ((_ to_fp 11 53) x1_ack!5553)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5553)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5553)
                       ((_ to_fp 11 53) x0_ack!5557)))
       ((_ to_fp 11 53) x0_ack!5557)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5554)
                       ((_ to_fp 11 53) x1_ack!5553))
               ((_ to_fp 11 53) x1_ack!5553))
       ((_ to_fp 11 53) x2_ack!5554)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5554)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5554)
                       ((_ to_fp 11 53) x1_ack!5553)))
       ((_ to_fp 11 53) x1_ack!5553)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5553)
                    ((_ to_fp 11 53) x0_ack!5557))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5554)
                    ((_ to_fp 11 53) x1_ack!5553))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5555) ((_ to_fp 11 53) b_ack!5556))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5555) ((_ to_fp 11 53) x0_ack!5557))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5556) ((_ to_fp 11 53) x2_ack!5554))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5555) ((_ to_fp 11 53) b_ack!5556))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5555) ((_ to_fp 11 53) x0_ack!5557))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5555) ((_ to_fp 11 53) x1_ack!5553)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5553) ((_ to_fp 11 53) a_ack!5555))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5556) ((_ to_fp 11 53) x1_ack!5553))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5556) ((_ to_fp 11 53) x2_ack!5554)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5554)
                    ((_ to_fp 11 53) x1_ack!5553))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5555)
                       ((_ to_fp 11 53) x1_ack!5553))
               ((_ to_fp 11 53) x1_ack!5553))
       ((_ to_fp 11 53) a_ack!5555)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5555)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5555)
                       ((_ to_fp 11 53) x1_ack!5553)))
       ((_ to_fp 11 53) x1_ack!5553)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5555)
                                  ((_ to_fp 11 53) x1_ack!5553)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5555)
                                   ((_ to_fp 11 53) x1_ack!5553))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5555)
                                   ((_ to_fp 11 53) x1_ack!5553)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5555)
                           ((_ to_fp 11 53) x1_ack!5553)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5555)
                 ((_ to_fp 11 53) x1_ack!5553)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5555)
                                  ((_ to_fp 11 53) x1_ack!5553)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5555)
                                   ((_ to_fp 11 53) x1_ack!5553))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5555)
                                   ((_ to_fp 11 53) x1_ack!5553)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5555)
                           ((_ to_fp 11 53) x1_ack!5553)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5555)
                 ((_ to_fp 11 53) x1_ack!5553)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5556)
                                  ((_ to_fp 11 53) x1_ack!5553)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5556)
                                   ((_ to_fp 11 53) x1_ack!5553))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5556)
                                   ((_ to_fp 11 53) x1_ack!5553)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5556)
                           ((_ to_fp 11 53) x1_ack!5553)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5556)
                 ((_ to_fp 11 53) x1_ack!5553)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5556)
                                  ((_ to_fp 11 53) x1_ack!5553)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5556)
                                   ((_ to_fp 11 53) x1_ack!5553))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5556)
                                   ((_ to_fp 11 53) x1_ack!5553)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5556)
                           ((_ to_fp 11 53) x1_ack!5553)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5556)
                 ((_ to_fp 11 53) x1_ack!5553)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5555)
                           ((_ to_fp 11 53) x1_ack!5553))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5555)
                           ((_ to_fp 11 53) x1_ack!5553))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5556)
                           ((_ to_fp 11 53) x1_ack!5553))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5556)
                           ((_ to_fp 11 53) x1_ack!5553)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5555)
                           ((_ to_fp 11 53) x1_ack!5553))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5555)
                           ((_ to_fp 11 53) x1_ack!5553))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5556)
                           ((_ to_fp 11 53) x1_ack!5553))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5556)
                           ((_ to_fp 11 53) x1_ack!5553)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5555)
                                   ((_ to_fp 11 53) x1_ack!5553))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5555)
                                   ((_ to_fp 11 53) x1_ack!5553)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5556)
                                   ((_ to_fp 11 53) x1_ack!5553))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5556)
                                   ((_ to_fp 11 53) x1_ack!5553)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5555)
                           ((_ to_fp 11 53) x1_ack!5553))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5556)
                           ((_ to_fp 11 53) x1_ack!5553)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5555)
                                   ((_ to_fp 11 53) x1_ack!5553))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5555)
                                   ((_ to_fp 11 53) x1_ack!5553)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5556)
                                   ((_ to_fp 11 53) x1_ack!5553))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5556)
                                   ((_ to_fp 11 53) x1_ack!5553)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5555)
                           ((_ to_fp 11 53) x1_ack!5553))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5556)
                           ((_ to_fp 11 53) x1_ack!5553)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (FPCHECK_FADD_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!5555)
                  ((_ to_fp 11 53) x1_ack!5553))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!5555)
                  ((_ to_fp 11 53) x1_ack!5553)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!5556)
                  ((_ to_fp 11 53) x1_ack!5553))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!5556)
                  ((_ to_fp 11 53) x1_ack!5553)))))

(check-sat)
(exit)
