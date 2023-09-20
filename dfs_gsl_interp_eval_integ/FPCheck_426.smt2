(declare-fun x1_ack!5264 () (_ BitVec 64))
(declare-fun x0_ack!5268 () (_ BitVec 64))
(declare-fun x2_ack!5265 () (_ BitVec 64))
(declare-fun b_ack!5267 () (_ BitVec 64))
(declare-fun a_ack!5266 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5268) ((_ to_fp 11 53) x1_ack!5264)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5264) ((_ to_fp 11 53) x2_ack!5265)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5264)
                       ((_ to_fp 11 53) x0_ack!5268))
               ((_ to_fp 11 53) x0_ack!5268))
       ((_ to_fp 11 53) x1_ack!5264)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5264)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5264)
                       ((_ to_fp 11 53) x0_ack!5268)))
       ((_ to_fp 11 53) x0_ack!5268)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5265)
                       ((_ to_fp 11 53) x1_ack!5264))
               ((_ to_fp 11 53) x1_ack!5264))
       ((_ to_fp 11 53) x2_ack!5265)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5265)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5265)
                       ((_ to_fp 11 53) x1_ack!5264)))
       ((_ to_fp 11 53) x1_ack!5264)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5264)
                    ((_ to_fp 11 53) x0_ack!5268))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5265)
                    ((_ to_fp 11 53) x1_ack!5264))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5266) ((_ to_fp 11 53) b_ack!5267))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5266) ((_ to_fp 11 53) x0_ack!5268))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5267) ((_ to_fp 11 53) x2_ack!5265))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5266) ((_ to_fp 11 53) b_ack!5267))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5266) ((_ to_fp 11 53) x0_ack!5268))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5266) ((_ to_fp 11 53) x1_ack!5264)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5264) ((_ to_fp 11 53) a_ack!5266))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5267) ((_ to_fp 11 53) x1_ack!5264))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5267) ((_ to_fp 11 53) x2_ack!5265)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5265)
                    ((_ to_fp 11 53) x1_ack!5264))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5266)
                       ((_ to_fp 11 53) x1_ack!5264))
               ((_ to_fp 11 53) x1_ack!5264))
       ((_ to_fp 11 53) a_ack!5266)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5266)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5266)
                       ((_ to_fp 11 53) x1_ack!5264)))
       ((_ to_fp 11 53) x1_ack!5264)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5266)
                                  ((_ to_fp 11 53) x1_ack!5264)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5266)
                                   ((_ to_fp 11 53) x1_ack!5264))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5266)
                                   ((_ to_fp 11 53) x1_ack!5264)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5266)
                           ((_ to_fp 11 53) x1_ack!5264)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5266)
                 ((_ to_fp 11 53) x1_ack!5264)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5266)
                                  ((_ to_fp 11 53) x1_ack!5264)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5266)
                                   ((_ to_fp 11 53) x1_ack!5264))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5266)
                                   ((_ to_fp 11 53) x1_ack!5264)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5266)
                           ((_ to_fp 11 53) x1_ack!5264)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5266)
                 ((_ to_fp 11 53) x1_ack!5264)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5267)
                                  ((_ to_fp 11 53) x1_ack!5264)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5267)
                                   ((_ to_fp 11 53) x1_ack!5264))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5267)
                                   ((_ to_fp 11 53) x1_ack!5264)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5267)
                           ((_ to_fp 11 53) x1_ack!5264)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5267)
                 ((_ to_fp 11 53) x1_ack!5264)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5267)
                                  ((_ to_fp 11 53) x1_ack!5264)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5267)
                                   ((_ to_fp 11 53) x1_ack!5264))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5267)
                                   ((_ to_fp 11 53) x1_ack!5264)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5267)
                           ((_ to_fp 11 53) x1_ack!5264)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5267)
                 ((_ to_fp 11 53) x1_ack!5264)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5266)
                           ((_ to_fp 11 53) x1_ack!5264))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5266)
                           ((_ to_fp 11 53) x1_ack!5264))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5267)
                           ((_ to_fp 11 53) x1_ack!5264))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5267)
                           ((_ to_fp 11 53) x1_ack!5264)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5266)
                           ((_ to_fp 11 53) x1_ack!5264))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5266)
                           ((_ to_fp 11 53) x1_ack!5264))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5267)
                           ((_ to_fp 11 53) x1_ack!5264))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5267)
                           ((_ to_fp 11 53) x1_ack!5264)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!5266)
          ((_ to_fp 11 53) x1_ack!5264))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!5267)
          ((_ to_fp 11 53) x1_ack!5264))))

(check-sat)
(exit)
