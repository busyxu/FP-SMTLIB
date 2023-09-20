(declare-fun x1_ack!5284 () (_ BitVec 64))
(declare-fun x0_ack!5288 () (_ BitVec 64))
(declare-fun x2_ack!5285 () (_ BitVec 64))
(declare-fun b_ack!5287 () (_ BitVec 64))
(declare-fun a_ack!5286 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5288) ((_ to_fp 11 53) x1_ack!5284)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5284) ((_ to_fp 11 53) x2_ack!5285)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5284)
                       ((_ to_fp 11 53) x0_ack!5288))
               ((_ to_fp 11 53) x0_ack!5288))
       ((_ to_fp 11 53) x1_ack!5284)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5284)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5284)
                       ((_ to_fp 11 53) x0_ack!5288)))
       ((_ to_fp 11 53) x0_ack!5288)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5285)
                       ((_ to_fp 11 53) x1_ack!5284))
               ((_ to_fp 11 53) x1_ack!5284))
       ((_ to_fp 11 53) x2_ack!5285)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5285)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5285)
                       ((_ to_fp 11 53) x1_ack!5284)))
       ((_ to_fp 11 53) x1_ack!5284)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5284)
                    ((_ to_fp 11 53) x0_ack!5288))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5285)
                    ((_ to_fp 11 53) x1_ack!5284))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5286) ((_ to_fp 11 53) b_ack!5287))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5286) ((_ to_fp 11 53) x0_ack!5288))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5287) ((_ to_fp 11 53) x2_ack!5285))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5286) ((_ to_fp 11 53) b_ack!5287))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5286) ((_ to_fp 11 53) x0_ack!5288))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5286) ((_ to_fp 11 53) x1_ack!5284)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5284) ((_ to_fp 11 53) a_ack!5286))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5287) ((_ to_fp 11 53) x1_ack!5284))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5287) ((_ to_fp 11 53) x2_ack!5285)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5285)
                    ((_ to_fp 11 53) x1_ack!5284))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5286)
                       ((_ to_fp 11 53) x1_ack!5284))
               ((_ to_fp 11 53) x1_ack!5284))
       ((_ to_fp 11 53) a_ack!5286)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5286)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5286)
                       ((_ to_fp 11 53) x1_ack!5284)))
       ((_ to_fp 11 53) x1_ack!5284)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5286)
                                  ((_ to_fp 11 53) x1_ack!5284)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5286)
                                   ((_ to_fp 11 53) x1_ack!5284))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5286)
                                   ((_ to_fp 11 53) x1_ack!5284)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5286)
                           ((_ to_fp 11 53) x1_ack!5284)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5286)
                 ((_ to_fp 11 53) x1_ack!5284)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5286)
                                  ((_ to_fp 11 53) x1_ack!5284)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5286)
                                   ((_ to_fp 11 53) x1_ack!5284))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5286)
                                   ((_ to_fp 11 53) x1_ack!5284)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5286)
                           ((_ to_fp 11 53) x1_ack!5284)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5286)
                 ((_ to_fp 11 53) x1_ack!5284)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5287)
                                  ((_ to_fp 11 53) x1_ack!5284)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5287)
                                   ((_ to_fp 11 53) x1_ack!5284))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5287)
                                   ((_ to_fp 11 53) x1_ack!5284)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5287)
                           ((_ to_fp 11 53) x1_ack!5284)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5287)
                 ((_ to_fp 11 53) x1_ack!5284)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5287)
                                  ((_ to_fp 11 53) x1_ack!5284)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5287)
                                   ((_ to_fp 11 53) x1_ack!5284))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5287)
                                   ((_ to_fp 11 53) x1_ack!5284)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5287)
                           ((_ to_fp 11 53) x1_ack!5284)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5287)
                 ((_ to_fp 11 53) x1_ack!5284)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5286)
                           ((_ to_fp 11 53) x1_ack!5284))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5286)
                           ((_ to_fp 11 53) x1_ack!5284))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5287)
                           ((_ to_fp 11 53) x1_ack!5284))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5287)
                           ((_ to_fp 11 53) x1_ack!5284)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5286)
                           ((_ to_fp 11 53) x1_ack!5284))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5286)
                           ((_ to_fp 11 53) x1_ack!5284))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5287)
                           ((_ to_fp 11 53) x1_ack!5284))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5287)
                           ((_ to_fp 11 53) x1_ack!5284)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!5286)
          ((_ to_fp 11 53) x1_ack!5284))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!5287)
          ((_ to_fp 11 53) x1_ack!5284))))

(check-sat)
(exit)
