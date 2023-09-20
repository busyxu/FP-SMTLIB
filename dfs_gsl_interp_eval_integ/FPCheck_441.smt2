(declare-fun x1_ack!5483 () (_ BitVec 64))
(declare-fun x0_ack!5487 () (_ BitVec 64))
(declare-fun x2_ack!5484 () (_ BitVec 64))
(declare-fun b_ack!5486 () (_ BitVec 64))
(declare-fun a_ack!5485 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5487) ((_ to_fp 11 53) x1_ack!5483)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5483) ((_ to_fp 11 53) x2_ack!5484)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5483)
                       ((_ to_fp 11 53) x0_ack!5487))
               ((_ to_fp 11 53) x0_ack!5487))
       ((_ to_fp 11 53) x1_ack!5483)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5483)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5483)
                       ((_ to_fp 11 53) x0_ack!5487)))
       ((_ to_fp 11 53) x0_ack!5487)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5484)
                       ((_ to_fp 11 53) x1_ack!5483))
               ((_ to_fp 11 53) x1_ack!5483))
       ((_ to_fp 11 53) x2_ack!5484)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5484)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5484)
                       ((_ to_fp 11 53) x1_ack!5483)))
       ((_ to_fp 11 53) x1_ack!5483)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5483)
                    ((_ to_fp 11 53) x0_ack!5487))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5484)
                    ((_ to_fp 11 53) x1_ack!5483))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5485) ((_ to_fp 11 53) b_ack!5486))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5485) ((_ to_fp 11 53) x0_ack!5487))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5486) ((_ to_fp 11 53) x2_ack!5484))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5485) ((_ to_fp 11 53) b_ack!5486))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5485) ((_ to_fp 11 53) x0_ack!5487))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5485) ((_ to_fp 11 53) x1_ack!5483)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5483) ((_ to_fp 11 53) a_ack!5485))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5486) ((_ to_fp 11 53) x1_ack!5483))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5486) ((_ to_fp 11 53) x2_ack!5484)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5484)
                    ((_ to_fp 11 53) x1_ack!5483))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5485)
                       ((_ to_fp 11 53) x1_ack!5483))
               ((_ to_fp 11 53) x1_ack!5483))
       ((_ to_fp 11 53) a_ack!5485)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5485)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5485)
                       ((_ to_fp 11 53) x1_ack!5483)))
       ((_ to_fp 11 53) x1_ack!5483)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5485)
                                  ((_ to_fp 11 53) x1_ack!5483)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5485)
                                   ((_ to_fp 11 53) x1_ack!5483))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5485)
                                   ((_ to_fp 11 53) x1_ack!5483)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5485)
                           ((_ to_fp 11 53) x1_ack!5483)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5485)
                 ((_ to_fp 11 53) x1_ack!5483)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5485)
                                  ((_ to_fp 11 53) x1_ack!5483)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5485)
                                   ((_ to_fp 11 53) x1_ack!5483))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5485)
                                   ((_ to_fp 11 53) x1_ack!5483)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5485)
                           ((_ to_fp 11 53) x1_ack!5483)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5485)
                 ((_ to_fp 11 53) x1_ack!5483)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5486)
                                  ((_ to_fp 11 53) x1_ack!5483)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5486)
                                   ((_ to_fp 11 53) x1_ack!5483))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5486)
                                   ((_ to_fp 11 53) x1_ack!5483)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5486)
                           ((_ to_fp 11 53) x1_ack!5483)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5486)
                 ((_ to_fp 11 53) x1_ack!5483)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5486)
                                  ((_ to_fp 11 53) x1_ack!5483)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5486)
                                   ((_ to_fp 11 53) x1_ack!5483))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5486)
                                   ((_ to_fp 11 53) x1_ack!5483)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5486)
                           ((_ to_fp 11 53) x1_ack!5483)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5486)
                 ((_ to_fp 11 53) x1_ack!5483)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5485)
                           ((_ to_fp 11 53) x1_ack!5483))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5485)
                           ((_ to_fp 11 53) x1_ack!5483))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5486)
                           ((_ to_fp 11 53) x1_ack!5483))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5486)
                           ((_ to_fp 11 53) x1_ack!5483)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5485)
                           ((_ to_fp 11 53) x1_ack!5483))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5485)
                           ((_ to_fp 11 53) x1_ack!5483))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5486)
                           ((_ to_fp 11 53) x1_ack!5483))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5486)
                           ((_ to_fp 11 53) x1_ack!5483)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5485)
                                   ((_ to_fp 11 53) x1_ack!5483))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5485)
                                   ((_ to_fp 11 53) x1_ack!5483)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5486)
                                   ((_ to_fp 11 53) x1_ack!5483))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5486)
                                   ((_ to_fp 11 53) x1_ack!5483)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5485)
                           ((_ to_fp 11 53) x1_ack!5483))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5486)
                           ((_ to_fp 11 53) x1_ack!5483)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5485)
                                   ((_ to_fp 11 53) x1_ack!5483))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5485)
                                   ((_ to_fp 11 53) x1_ack!5483)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5486)
                                   ((_ to_fp 11 53) x1_ack!5483))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5486)
                                   ((_ to_fp 11 53) x1_ack!5483)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5485)
                           ((_ to_fp 11 53) x1_ack!5483))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5486)
                           ((_ to_fp 11 53) x1_ack!5483)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!5485)
          ((_ to_fp 11 53) x1_ack!5483))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!5485)
          ((_ to_fp 11 53) x1_ack!5483))))

(check-sat)
(exit)
