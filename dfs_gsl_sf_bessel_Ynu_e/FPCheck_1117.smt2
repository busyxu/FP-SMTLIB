(declare-fun b_ack!3535 () (_ BitVec 64))
(declare-fun a_ack!3536 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!3535) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3536) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!3536) ((_ to_fp 11 53) #x4049000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!3535) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!3536) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) b_ack!3535))
        (fp.mul roundNearestTiesToEven
                (fp.abs ((_ to_fp 11 53) a_ack!3536))
                ((_ to_fp 11 53) #x0010000000000000))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!3536))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!3536)
                       ((_ to_fp 11 53) a_ack!3536))
               ((_ to_fp 11 53) a_ack!3536))
       ((_ to_fp 11 53) a_ack!3536)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!3536))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!3536)
                       ((_ to_fp 11 53) a_ack!3536))
               ((_ to_fp 11 53) a_ack!3536))
       ((_ to_fp 11 53) a_ack!3536)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3536)
                                   ((_ to_fp 11 53) a_ack!3536))
                           ((_ to_fp 11 53) a_ack!3536)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3536)
                           ((_ to_fp 11 53) a_ack!3536))
                   ((_ to_fp 11 53) a_ack!3536))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3536)
                                   ((_ to_fp 11 53) a_ack!3536))
                           ((_ to_fp 11 53) a_ack!3536)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3536)
                           ((_ to_fp 11 53) a_ack!3536))
                   ((_ to_fp 11 53) a_ack!3536))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3536)
                           ((_ to_fp 11 53) a_ack!3536))
                   ((_ to_fp 11 53) a_ack!3536))))
  (not (fp.eq (fp.abs (fp.mul roundNearestTiesToEven a!1 a!1))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3536)
                           ((_ to_fp 11 53) a_ack!3536))
                   ((_ to_fp 11 53) a_ack!3536))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         (fp.mul roundNearestTiesToEven a!1 a!1)
                         a!1)
                 (fp.mul roundNearestTiesToEven a!1 a!1))
         a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3536)
                                   ((_ to_fp 11 53) a_ack!3536))
                           ((_ to_fp 11 53) a_ack!3536)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3536)
                           ((_ to_fp 11 53) a_ack!3536))
                   ((_ to_fp 11 53) a_ack!3536))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         (fp.mul roundNearestTiesToEven a!1 a!1)
                         a!1)
                 a!1)
         (fp.mul roundNearestTiesToEven a!1 a!1))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3536)
                           ((_ to_fp 11 53) a_ack!3536))
                   ((_ to_fp 11 53) a_ack!3536))))
(let ((a!2 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!1)
                                   a!1)
                           ((_ to_fp 11 53) a_ack!3536)))))
  (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3536)
                           ((_ to_fp 11 53) a_ack!3536))
                   ((_ to_fp 11 53) a_ack!3536))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           a!1)
                   ((_ to_fp 11 53) a_ack!3536))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!2
                         ((_ to_fp 11 53) a_ack!3536))
                 a!2)
         ((_ to_fp 11 53) a_ack!3536)))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!3536))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3536)
                           ((_ to_fp 11 53) a_ack!3536))
                   ((_ to_fp 11 53) a_ack!3536))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           a!1)
                   ((_ to_fp 11 53) a_ack!3536))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!2
                         ((_ to_fp 11 53) a_ack!3536))
                 ((_ to_fp 11 53) a_ack!3536))
         a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3535)
                                   ((_ to_fp 11 53) a_ack!3536)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!3535)
                           ((_ to_fp 11 53) a_ack!3536)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3535)
                                   ((_ to_fp 11 53) a_ack!3536))))))
  (fp.eq a!1
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!3535)
                 ((_ to_fp 11 53) a_ack!3536)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3535)
                                   ((_ to_fp 11 53) a_ack!3536))))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3f947ae147ae147b))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!3535)
                    ((_ to_fp 11 53) a_ack!3536))
            ((_ to_fp 11 53) #x3fef5c28f5c28f5c))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!3535)
               ((_ to_fp 11 53) a_ack!3536))
       ((_ to_fp 11 53) #x3ff051eb851eb852)))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!3535)
                    ((_ to_fp 11 53) a_ack!3536))
            ((_ to_fp 11 53) #x3fec28f5c28f5c29))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!3535)
               ((_ to_fp 11 53) a_ack!3536))
       ((_ to_fp 11 53) #x3ff1eb851eb851ec)))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!3535)
                    ((_ to_fp 11 53) a_ack!3536))
            ((_ to_fp 11 53) #x3feccccccccccccd))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!3535)
               ((_ to_fp 11 53) a_ack!3536))
       ((_ to_fp 11 53) #x3ff199999999999a)))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!3535)
                    ((_ to_fp 11 53) a_ack!3536))
            ((_ to_fp 11 53) #x3fe999999999999a))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!3535)
               ((_ to_fp 11 53) a_ack!3536))
       ((_ to_fp 11 53) #x3ff3333333333333)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!3535)
                  ((_ to_fp 11 53) a_ack!3536)))
  #xbf58e77ae02c68b7))

(check-sat)
(exit)
