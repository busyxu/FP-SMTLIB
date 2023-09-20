(declare-fun x1_ack!5493 () (_ BitVec 64))
(declare-fun x0_ack!5497 () (_ BitVec 64))
(declare-fun x2_ack!5494 () (_ BitVec 64))
(declare-fun b_ack!5496 () (_ BitVec 64))
(declare-fun a_ack!5495 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5497) ((_ to_fp 11 53) x1_ack!5493)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5493) ((_ to_fp 11 53) x2_ack!5494)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5493)
                       ((_ to_fp 11 53) x0_ack!5497))
               ((_ to_fp 11 53) x0_ack!5497))
       ((_ to_fp 11 53) x1_ack!5493)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5493)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5493)
                       ((_ to_fp 11 53) x0_ack!5497)))
       ((_ to_fp 11 53) x0_ack!5497)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5494)
                       ((_ to_fp 11 53) x1_ack!5493))
               ((_ to_fp 11 53) x1_ack!5493))
       ((_ to_fp 11 53) x2_ack!5494)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5494)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5494)
                       ((_ to_fp 11 53) x1_ack!5493)))
       ((_ to_fp 11 53) x1_ack!5493)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5493)
                    ((_ to_fp 11 53) x0_ack!5497))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5494)
                    ((_ to_fp 11 53) x1_ack!5493))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5495) ((_ to_fp 11 53) b_ack!5496))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5495) ((_ to_fp 11 53) x0_ack!5497))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5496) ((_ to_fp 11 53) x2_ack!5494))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5495) ((_ to_fp 11 53) b_ack!5496))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5495) ((_ to_fp 11 53) x0_ack!5497))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5495) ((_ to_fp 11 53) x1_ack!5493)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5493) ((_ to_fp 11 53) a_ack!5495))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5496) ((_ to_fp 11 53) x1_ack!5493))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5496) ((_ to_fp 11 53) x2_ack!5494)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5494)
                    ((_ to_fp 11 53) x1_ack!5493))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5495)
                       ((_ to_fp 11 53) x1_ack!5493))
               ((_ to_fp 11 53) x1_ack!5493))
       ((_ to_fp 11 53) a_ack!5495)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5495)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5495)
                       ((_ to_fp 11 53) x1_ack!5493)))
       ((_ to_fp 11 53) x1_ack!5493)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5495)
                                  ((_ to_fp 11 53) x1_ack!5493)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5495)
                                   ((_ to_fp 11 53) x1_ack!5493))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5495)
                                   ((_ to_fp 11 53) x1_ack!5493)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5495)
                           ((_ to_fp 11 53) x1_ack!5493)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5495)
                 ((_ to_fp 11 53) x1_ack!5493)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5495)
                                  ((_ to_fp 11 53) x1_ack!5493)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5495)
                                   ((_ to_fp 11 53) x1_ack!5493))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5495)
                                   ((_ to_fp 11 53) x1_ack!5493)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5495)
                           ((_ to_fp 11 53) x1_ack!5493)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5495)
                 ((_ to_fp 11 53) x1_ack!5493)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5496)
                                  ((_ to_fp 11 53) x1_ack!5493)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5496)
                                   ((_ to_fp 11 53) x1_ack!5493))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5496)
                                   ((_ to_fp 11 53) x1_ack!5493)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5496)
                           ((_ to_fp 11 53) x1_ack!5493)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5496)
                 ((_ to_fp 11 53) x1_ack!5493)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5496)
                                  ((_ to_fp 11 53) x1_ack!5493)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5496)
                                   ((_ to_fp 11 53) x1_ack!5493))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5496)
                                   ((_ to_fp 11 53) x1_ack!5493)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5496)
                           ((_ to_fp 11 53) x1_ack!5493)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5496)
                 ((_ to_fp 11 53) x1_ack!5493)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5495)
                           ((_ to_fp 11 53) x1_ack!5493))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5495)
                           ((_ to_fp 11 53) x1_ack!5493))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5496)
                           ((_ to_fp 11 53) x1_ack!5493))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5496)
                           ((_ to_fp 11 53) x1_ack!5493)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5495)
                           ((_ to_fp 11 53) x1_ack!5493))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5495)
                           ((_ to_fp 11 53) x1_ack!5493))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5496)
                           ((_ to_fp 11 53) x1_ack!5493))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5496)
                           ((_ to_fp 11 53) x1_ack!5493)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5495)
                                   ((_ to_fp 11 53) x1_ack!5493))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5495)
                                   ((_ to_fp 11 53) x1_ack!5493)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5496)
                                   ((_ to_fp 11 53) x1_ack!5493))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5496)
                                   ((_ to_fp 11 53) x1_ack!5493)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5495)
                           ((_ to_fp 11 53) x1_ack!5493))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5496)
                           ((_ to_fp 11 53) x1_ack!5493)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5495)
                                   ((_ to_fp 11 53) x1_ack!5493))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5495)
                                   ((_ to_fp 11 53) x1_ack!5493)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5496)
                                   ((_ to_fp 11 53) x1_ack!5493))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5496)
                                   ((_ to_fp 11 53) x1_ack!5493)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5495)
                           ((_ to_fp 11 53) x1_ack!5493))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5496)
                           ((_ to_fp 11 53) x1_ack!5493)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!5495)
          ((_ to_fp 11 53) x1_ack!5493))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!5495)
          ((_ to_fp 11 53) x1_ack!5493))))

(check-sat)
(exit)
