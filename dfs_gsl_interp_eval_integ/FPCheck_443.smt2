(declare-fun x1_ack!5503 () (_ BitVec 64))
(declare-fun x0_ack!5507 () (_ BitVec 64))
(declare-fun x2_ack!5504 () (_ BitVec 64))
(declare-fun b_ack!5506 () (_ BitVec 64))
(declare-fun a_ack!5505 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5507) ((_ to_fp 11 53) x1_ack!5503)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5503) ((_ to_fp 11 53) x2_ack!5504)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5503)
                       ((_ to_fp 11 53) x0_ack!5507))
               ((_ to_fp 11 53) x0_ack!5507))
       ((_ to_fp 11 53) x1_ack!5503)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5503)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5503)
                       ((_ to_fp 11 53) x0_ack!5507)))
       ((_ to_fp 11 53) x0_ack!5507)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5504)
                       ((_ to_fp 11 53) x1_ack!5503))
               ((_ to_fp 11 53) x1_ack!5503))
       ((_ to_fp 11 53) x2_ack!5504)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5504)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5504)
                       ((_ to_fp 11 53) x1_ack!5503)))
       ((_ to_fp 11 53) x1_ack!5503)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5503)
                    ((_ to_fp 11 53) x0_ack!5507))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5504)
                    ((_ to_fp 11 53) x1_ack!5503))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5505) ((_ to_fp 11 53) b_ack!5506))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5505) ((_ to_fp 11 53) x0_ack!5507))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5506) ((_ to_fp 11 53) x2_ack!5504))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5505) ((_ to_fp 11 53) b_ack!5506))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5505) ((_ to_fp 11 53) x0_ack!5507))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5505) ((_ to_fp 11 53) x1_ack!5503)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5503) ((_ to_fp 11 53) a_ack!5505))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5506) ((_ to_fp 11 53) x1_ack!5503))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5506) ((_ to_fp 11 53) x2_ack!5504)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5504)
                    ((_ to_fp 11 53) x1_ack!5503))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5505)
                       ((_ to_fp 11 53) x1_ack!5503))
               ((_ to_fp 11 53) x1_ack!5503))
       ((_ to_fp 11 53) a_ack!5505)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5505)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5505)
                       ((_ to_fp 11 53) x1_ack!5503)))
       ((_ to_fp 11 53) x1_ack!5503)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5505)
                                  ((_ to_fp 11 53) x1_ack!5503)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5505)
                                   ((_ to_fp 11 53) x1_ack!5503))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5505)
                                   ((_ to_fp 11 53) x1_ack!5503)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5505)
                           ((_ to_fp 11 53) x1_ack!5503)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5505)
                 ((_ to_fp 11 53) x1_ack!5503)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5505)
                                  ((_ to_fp 11 53) x1_ack!5503)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5505)
                                   ((_ to_fp 11 53) x1_ack!5503))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5505)
                                   ((_ to_fp 11 53) x1_ack!5503)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5505)
                           ((_ to_fp 11 53) x1_ack!5503)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5505)
                 ((_ to_fp 11 53) x1_ack!5503)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5506)
                                  ((_ to_fp 11 53) x1_ack!5503)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5506)
                                   ((_ to_fp 11 53) x1_ack!5503))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5506)
                                   ((_ to_fp 11 53) x1_ack!5503)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5506)
                           ((_ to_fp 11 53) x1_ack!5503)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5506)
                 ((_ to_fp 11 53) x1_ack!5503)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5506)
                                  ((_ to_fp 11 53) x1_ack!5503)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5506)
                                   ((_ to_fp 11 53) x1_ack!5503))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5506)
                                   ((_ to_fp 11 53) x1_ack!5503)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5506)
                           ((_ to_fp 11 53) x1_ack!5503)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5506)
                 ((_ to_fp 11 53) x1_ack!5503)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5505)
                           ((_ to_fp 11 53) x1_ack!5503))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5505)
                           ((_ to_fp 11 53) x1_ack!5503))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5506)
                           ((_ to_fp 11 53) x1_ack!5503))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5506)
                           ((_ to_fp 11 53) x1_ack!5503)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5505)
                           ((_ to_fp 11 53) x1_ack!5503))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5505)
                           ((_ to_fp 11 53) x1_ack!5503))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5506)
                           ((_ to_fp 11 53) x1_ack!5503))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5506)
                           ((_ to_fp 11 53) x1_ack!5503)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5505)
                                   ((_ to_fp 11 53) x1_ack!5503))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5505)
                                   ((_ to_fp 11 53) x1_ack!5503)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5506)
                                   ((_ to_fp 11 53) x1_ack!5503))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5506)
                                   ((_ to_fp 11 53) x1_ack!5503)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5505)
                           ((_ to_fp 11 53) x1_ack!5503))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5506)
                           ((_ to_fp 11 53) x1_ack!5503)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5505)
                                   ((_ to_fp 11 53) x1_ack!5503))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5505)
                                   ((_ to_fp 11 53) x1_ack!5503)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5506)
                                   ((_ to_fp 11 53) x1_ack!5503))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5506)
                                   ((_ to_fp 11 53) x1_ack!5503)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5505)
                           ((_ to_fp 11 53) x1_ack!5503))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5506)
                           ((_ to_fp 11 53) x1_ack!5503)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!5505)
          ((_ to_fp 11 53) x1_ack!5503))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!5505)
          ((_ to_fp 11 53) x1_ack!5503))))

(check-sat)
(exit)
