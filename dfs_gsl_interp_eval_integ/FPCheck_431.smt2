(declare-fun x1_ack!5324 () (_ BitVec 64))
(declare-fun x0_ack!5328 () (_ BitVec 64))
(declare-fun x2_ack!5325 () (_ BitVec 64))
(declare-fun b_ack!5327 () (_ BitVec 64))
(declare-fun a_ack!5326 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5328) ((_ to_fp 11 53) x1_ack!5324)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5324) ((_ to_fp 11 53) x2_ack!5325)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5324)
                       ((_ to_fp 11 53) x0_ack!5328))
               ((_ to_fp 11 53) x0_ack!5328))
       ((_ to_fp 11 53) x1_ack!5324)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5324)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5324)
                       ((_ to_fp 11 53) x0_ack!5328)))
       ((_ to_fp 11 53) x0_ack!5328)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5325)
                       ((_ to_fp 11 53) x1_ack!5324))
               ((_ to_fp 11 53) x1_ack!5324))
       ((_ to_fp 11 53) x2_ack!5325)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5325)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5325)
                       ((_ to_fp 11 53) x1_ack!5324)))
       ((_ to_fp 11 53) x1_ack!5324)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5324)
                    ((_ to_fp 11 53) x0_ack!5328))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5325)
                    ((_ to_fp 11 53) x1_ack!5324))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5326) ((_ to_fp 11 53) b_ack!5327))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5326) ((_ to_fp 11 53) x0_ack!5328))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5327) ((_ to_fp 11 53) x2_ack!5325))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5326) ((_ to_fp 11 53) b_ack!5327))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5326) ((_ to_fp 11 53) x0_ack!5328))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5326) ((_ to_fp 11 53) x1_ack!5324)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5324) ((_ to_fp 11 53) a_ack!5326))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5327) ((_ to_fp 11 53) x1_ack!5324))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5327) ((_ to_fp 11 53) x2_ack!5325)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5325)
                    ((_ to_fp 11 53) x1_ack!5324))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5326)
                       ((_ to_fp 11 53) x1_ack!5324))
               ((_ to_fp 11 53) x1_ack!5324))
       ((_ to_fp 11 53) a_ack!5326)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5326)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5326)
                       ((_ to_fp 11 53) x1_ack!5324)))
       ((_ to_fp 11 53) x1_ack!5324)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5326)
                                  ((_ to_fp 11 53) x1_ack!5324)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5326)
                                   ((_ to_fp 11 53) x1_ack!5324))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5326)
                                   ((_ to_fp 11 53) x1_ack!5324)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5326)
                           ((_ to_fp 11 53) x1_ack!5324)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5326)
                 ((_ to_fp 11 53) x1_ack!5324)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5326)
                                  ((_ to_fp 11 53) x1_ack!5324)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5326)
                                   ((_ to_fp 11 53) x1_ack!5324))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5326)
                                   ((_ to_fp 11 53) x1_ack!5324)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5326)
                           ((_ to_fp 11 53) x1_ack!5324)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5326)
                 ((_ to_fp 11 53) x1_ack!5324)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5327)
                                  ((_ to_fp 11 53) x1_ack!5324)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5327)
                                   ((_ to_fp 11 53) x1_ack!5324))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5327)
                                   ((_ to_fp 11 53) x1_ack!5324)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5327)
                           ((_ to_fp 11 53) x1_ack!5324)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5327)
                 ((_ to_fp 11 53) x1_ack!5324)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5327)
                                  ((_ to_fp 11 53) x1_ack!5324)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5327)
                                   ((_ to_fp 11 53) x1_ack!5324))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5327)
                                   ((_ to_fp 11 53) x1_ack!5324)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5327)
                           ((_ to_fp 11 53) x1_ack!5324)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5327)
                 ((_ to_fp 11 53) x1_ack!5324)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5326)
                           ((_ to_fp 11 53) x1_ack!5324))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5326)
                           ((_ to_fp 11 53) x1_ack!5324))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5327)
                           ((_ to_fp 11 53) x1_ack!5324))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5327)
                           ((_ to_fp 11 53) x1_ack!5324)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5326)
                           ((_ to_fp 11 53) x1_ack!5324))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5326)
                           ((_ to_fp 11 53) x1_ack!5324))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5327)
                           ((_ to_fp 11 53) x1_ack!5324))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5327)
                           ((_ to_fp 11 53) x1_ack!5324)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5326)
                                   ((_ to_fp 11 53) x1_ack!5324))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5326)
                                   ((_ to_fp 11 53) x1_ack!5324)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5327)
                                   ((_ to_fp 11 53) x1_ack!5324))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5327)
                                   ((_ to_fp 11 53) x1_ack!5324))))))
  (FPCHECK_FADD_ACCURACY
    a!1
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!5326)
                    ((_ to_fp 11 53) x1_ack!5324))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!5327)
                    ((_ to_fp 11 53) x1_ack!5324))))))

(check-sat)
(exit)
