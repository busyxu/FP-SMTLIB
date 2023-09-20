(declare-fun b_ack!2629 () (_ BitVec 64))
(declare-fun a_ack!2630 () (_ BitVec 64))
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun CF_acos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2629) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2630) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!2630) ((_ to_fp 11 53) #x4049000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2629) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!2630) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) b_ack!2629))
        (fp.mul roundNearestTiesToEven
                (fp.abs ((_ to_fp 11 53) a_ack!2630))
                ((_ to_fp 11 53) #x0010000000000000))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!2630))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2630)
                       ((_ to_fp 11 53) a_ack!2630))
               ((_ to_fp 11 53) a_ack!2630))
       ((_ to_fp 11 53) a_ack!2630)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!2630))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2630)
                       ((_ to_fp 11 53) a_ack!2630))
               ((_ to_fp 11 53) a_ack!2630))
       ((_ to_fp 11 53) a_ack!2630)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2630)
                                   ((_ to_fp 11 53) a_ack!2630))
                           ((_ to_fp 11 53) a_ack!2630)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2630)
                           ((_ to_fp 11 53) a_ack!2630))
                   ((_ to_fp 11 53) a_ack!2630))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2630)
                                   ((_ to_fp 11 53) a_ack!2630))
                           ((_ to_fp 11 53) a_ack!2630)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2630)
                           ((_ to_fp 11 53) a_ack!2630))
                   ((_ to_fp 11 53) a_ack!2630))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2630)
                           ((_ to_fp 11 53) a_ack!2630))
                   ((_ to_fp 11 53) a_ack!2630))))
  (not (fp.eq (fp.abs (fp.mul roundNearestTiesToEven a!1 a!1))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2630)
                           ((_ to_fp 11 53) a_ack!2630))
                   ((_ to_fp 11 53) a_ack!2630))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         (fp.mul roundNearestTiesToEven a!1 a!1)
                         a!1)
                 (fp.mul roundNearestTiesToEven a!1 a!1))
         a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2630)
                                   ((_ to_fp 11 53) a_ack!2630))
                           ((_ to_fp 11 53) a_ack!2630)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2630)
                           ((_ to_fp 11 53) a_ack!2630))
                   ((_ to_fp 11 53) a_ack!2630))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         (fp.mul roundNearestTiesToEven a!1 a!1)
                         a!1)
                 a!1)
         (fp.mul roundNearestTiesToEven a!1 a!1))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2630)
                           ((_ to_fp 11 53) a_ack!2630))
                   ((_ to_fp 11 53) a_ack!2630))))
(let ((a!2 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!1)
                                   a!1)
                           ((_ to_fp 11 53) a_ack!2630)))))
  (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2630)
                           ((_ to_fp 11 53) a_ack!2630))
                   ((_ to_fp 11 53) a_ack!2630))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           a!1)
                   ((_ to_fp 11 53) a_ack!2630))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!2
                         ((_ to_fp 11 53) a_ack!2630))
                 a!2)
         ((_ to_fp 11 53) a_ack!2630)))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!2630))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2630)
                           ((_ to_fp 11 53) a_ack!2630))
                   ((_ to_fp 11 53) a_ack!2630))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           a!1)
                   ((_ to_fp 11 53) a_ack!2630))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!2
                         ((_ to_fp 11 53) a_ack!2630))
                 ((_ to_fp 11 53) a_ack!2630))
         a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2629)
                                   ((_ to_fp 11 53) a_ack!2630)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2629)
                           ((_ to_fp 11 53) a_ack!2630)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2629)
                                   ((_ to_fp 11 53) a_ack!2630))))))
  (fp.eq a!1
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!2629)
                 ((_ to_fp 11 53) a_ack!2630)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2629)
                                   ((_ to_fp 11 53) a_ack!2630))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f947ae147ae147b)))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!2629)
                    ((_ to_fp 11 53) a_ack!2630))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!2629)
                    ((_ to_fp 11 53) a_ack!2630))
            ((_ to_fp 11 53) #x3fef5c28f5c28f5c))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!2629)
                    ((_ to_fp 11 53) a_ack!2630))
            ((_ to_fp 11 53) #x3ff051eb851eb852))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2629)
                                   ((_ to_fp 11 53) a_ack!2630))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2629)
                                   ((_ to_fp 11 53) a_ack!2630))))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2629)
                                   ((_ to_fp 11 53) a_ack!2630))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2629)
                                   ((_ to_fp 11 53) a_ack!2630))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2629)
                                   ((_ to_fp 11 53) a_ack!2630))
                           ((_ to_fp 11 53) #x3fd11c609d6904dd)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4054400000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x407ce00000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!1))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4078100000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   (fp.mul roundNearestTiesToEven a!1 a!1))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!2 a!3)
                 a!2)
         a!3))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2629)
                                   ((_ to_fp 11 53) a_ack!2630))
                           ((_ to_fp 11 53) #x3fd11c609d6904dd)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4054400000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x407ce00000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!1))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4078100000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   (fp.mul roundNearestTiesToEven a!1 a!1))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!2 a!3)
                 a!3)
         a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2629)
                                   ((_ to_fp 11 53) a_ack!2630))
                           ((_ to_fp 11 53) #x3fd11c609d6904dd)))))
(let ((a!2 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  (fp.mul roundNearestTiesToEven a!1 a!1)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2629)
                                   ((_ to_fp 11 53) a_ack!2630))
                           ((_ to_fp 11 53) #x3fd11c609d6904dd)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4054400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x407ce00000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4078100000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!1 a!1)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           a!2)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!1)))))
  (fp.eq a!3 a!2)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2629)
                                   ((_ to_fp 11 53) a_ack!2630))
                           ((_ to_fp 11 53) #x3fd11c609d6904dd)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4054400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x407ce00000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4078100000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!1 a!1)))))
  (not (fp.eq (fp.abs a!2) ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2629)
                                   ((_ to_fp 11 53) a_ack!2630))
                           ((_ to_fp 11 53) #x3fd11c609d6904dd)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4054400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x407ce00000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4078100000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!1 a!1)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           a!2)
                   a!2)))
  (fp.eq a!3
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x8000000000000000)
                 (fp.mul roundNearestTiesToEven a!1 a!1)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2629)
                                   ((_ to_fp 11 53) a_ack!2630))
                           ((_ to_fp 11 53) #x3fd11c609d6904dd)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4054400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x407ce00000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4078100000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!1 a!1)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   a!2)))
(let ((a!4 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  a!3
                                  ((_ to_fp 11 53) #x4092000000000000))
                          ((_ to_fp 11 53) #x4092000000000000))
                  a!3)))
  (not a!4))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2629)
                                   ((_ to_fp 11 53) a_ack!2630))
                           ((_ to_fp 11 53) #x3fd11c609d6904dd)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4054400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x407ce00000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4078100000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!1 a!1)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           a!2)
                   ((_ to_fp 11 53) #x4092000000000000))))
  (not (fp.eq (fp.abs a!3) ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2629)
                                   ((_ to_fp 11 53) a_ack!2630))
                           ((_ to_fp 11 53) #x3fd11c609d6904dd)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4054400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x407ce00000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4078100000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!1 a!1)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   a!2)))
  (fp.eq (fp.div roundNearestTiesToEven
                 a!3
                 (fp.div roundNearestTiesToEven
                         a!3
                         ((_ to_fp 11 53) #x4092000000000000)))
         ((_ to_fp 11 53) #x4092000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2629)
                                   ((_ to_fp 11 53) a_ack!2630))
                           ((_ to_fp 11 53) #x3fd11c609d6904dd)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4014000000000000)
                         (fp.mul roundNearestTiesToEven a!1 a!1))
                 ((_ to_fp 11 53) #x4014000000000000))
         (fp.mul roundNearestTiesToEven a!1 a!1))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2629)
                                   ((_ to_fp 11 53) a_ack!2630))
                           ((_ to_fp 11 53) #x3fd11c609d6904dd)))))
  (not (fp.eq (fp.abs (fp.mul roundNearestTiesToEven a!1 a!1))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2629)
                                   ((_ to_fp 11 53) a_ack!2630))
                           ((_ to_fp 11 53) #x3fd11c609d6904dd)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4014000000000000)
                         (fp.mul roundNearestTiesToEven a!1 a!1))
                 (fp.mul roundNearestTiesToEven a!1 a!1))
         ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2629)
                                   ((_ to_fp 11 53) a_ack!2630))
                           ((_ to_fp 11 53) #x3fd11c609d6904dd))))
      (a!4 (CF_acos (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!2629)
                                    ((_ to_fp 11 53) a_ack!2630))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4054400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x407ce00000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4078100000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!1 a!1))))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2629)
                                   ((_ to_fp 11 53) a_ack!2630))
                           ((_ to_fp 11 53) #x3fd8415268b8afe8))
                   a!4)))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           a!2)
                   ((_ to_fp 11 53) #x4092000000000000)))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40b2000000000000)
                   (CF_pow (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff8000000000000)
                                   a!5)
                           #x3fe5555555555555))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (CF_pow (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff8000000000000)
                                   a!5)
                           #x3fe5555555555555))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (CF_pow (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff8000000000000)
                                   a!5)
                           #x3fe5555555555555))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.abs a!3)
                   (fp.abs (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x407c700000000000)
                                   a!8)))))
  (fp.eq (fp.sub roundNearestTiesToEven a!9 (fp.abs a!3))
         (fp.abs (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) #x407c700000000000)
                         a!8))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2629)
                                   ((_ to_fp 11 53) a_ack!2630))
                           ((_ to_fp 11 53) #x3fd11c609d6904dd))))
      (a!4 (CF_acos (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!2629)
                                    ((_ to_fp 11 53) a_ack!2630))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4054400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x407ce00000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4078100000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!1 a!1))))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2629)
                                   ((_ to_fp 11 53) a_ack!2630))
                           ((_ to_fp 11 53) #x3fd8415268b8afe8))
                   a!4)))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           a!2)
                   ((_ to_fp 11 53) #x4092000000000000)))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40b2000000000000)
                   (CF_pow (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff8000000000000)
                                   a!5)
                           #x3fe5555555555555))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (CF_pow (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff8000000000000)
                                   a!5)
                           #x3fe5555555555555))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (CF_pow (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff8000000000000)
                                   a!5)
                           #x3fe5555555555555))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.abs a!3)
                   (fp.abs (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x407c700000000000)
                                   a!8)))))
(let ((a!10 (fp.sub roundNearestTiesToEven
                    a!9
                    (fp.abs (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x407c700000000000)
                                    a!8)))))
  (fp.eq a!10 (fp.abs a!3))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2629)
                                   ((_ to_fp 11 53) a_ack!2630))
                           ((_ to_fp 11 53) #x3fd11c609d6904dd))))
      (a!4 (CF_acos (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!2629)
                                    ((_ to_fp 11 53) a_ack!2630))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4054400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x407ce00000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4078100000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!1 a!1))))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2629)
                                   ((_ to_fp 11 53) a_ack!2630))
                           ((_ to_fp 11 53) #x3fd8415268b8afe8))
                   a!4))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xc01c000000000000)
                            a!1)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4014000000000000)
                                    (fp.mul roundNearestTiesToEven a!1 a!1))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           a!2)
                   ((_ to_fp 11 53) #x4092000000000000)))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40b2000000000000)
                   (CF_pow (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff8000000000000)
                                   a!5)
                           #x3fe5555555555555))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (CF_pow (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff8000000000000)
                                   a!5)
                           #x3fe5555555555555))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (CF_pow (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff8000000000000)
                                   a!5)
                           #x3fe5555555555555))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.abs a!3)
                   (fp.abs (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x407c700000000000)
                                   a!8)))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.abs (fp.div roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x406a7e54e810e956))))))
  (fp.eq (fp.sub roundNearestTiesToEven a!11 a!9)
         (fp.abs (fp.div roundNearestTiesToEven
                         a!10
                         ((_ to_fp 11 53) #x406a7e54e810e956))))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2629)
                                   ((_ to_fp 11 53) a_ack!2630))
                           ((_ to_fp 11 53) #x3fd11c609d6904dd))))
      (a!4 (CF_acos (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!2629)
                                    ((_ to_fp 11 53) a_ack!2630))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4054400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x407ce00000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4078100000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!1 a!1))))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2629)
                                   ((_ to_fp 11 53) a_ack!2630))
                           ((_ to_fp 11 53) #x3fd8415268b8afe8))
                   a!4))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xc01c000000000000)
                            a!1)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4014000000000000)
                                    (fp.mul roundNearestTiesToEven a!1 a!1))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           a!2)
                   ((_ to_fp 11 53) #x4092000000000000)))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40b2000000000000)
                   (CF_pow (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff8000000000000)
                                   a!5)
                           #x3fe5555555555555))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (CF_pow (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff8000000000000)
                                   a!5)
                           #x3fe5555555555555))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (CF_pow (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff8000000000000)
                                   a!5)
                           #x3fe5555555555555))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.abs a!3)
                   (fp.abs (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x407c700000000000)
                                   a!8)))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.abs (fp.div roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x406a7e54e810e956))))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    a!11
                    (fp.abs (fp.div roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x406a7e54e810e956))))))
  (fp.eq a!12 a!9))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2629)
                                   ((_ to_fp 11 53) a_ack!2630))
                           ((_ to_fp 11 53) #x3fd11c609d6904dd))))
      (a!4 (CF_acos (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!2629)
                                    ((_ to_fp 11 53) a_ack!2630))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4054400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x407ce00000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4078100000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!1 a!1))))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2629)
                                   ((_ to_fp 11 53) a_ack!2630))
                           ((_ to_fp 11 53) #x3fd8415268b8afe8))
                   a!4))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc01c000000000000)
                           a!1)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4014000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           a!2)
                   ((_ to_fp 11 53) #x4092000000000000)))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40b2000000000000)
                   (CF_pow (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff8000000000000)
                                   a!5)
                           #x3fe5555555555555))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (CF_pow (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff8000000000000)
                                   a!5)
                           #x3fe5555555555555))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (CF_pow (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff8000000000000)
                                   a!5)
                           #x3fe5555555555555))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven
            a!3
            (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x407c700000000000)
                    a!8))
    (fp.div roundNearestTiesToEven a!9 ((_ to_fp 11 53) #x406a7e54e810e956)))))))))

(check-sat)
(exit)
