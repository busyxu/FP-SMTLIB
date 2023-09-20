(declare-fun a_ack!1485 () (_ BitVec 64))
(declare-fun b_ack!1484 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1485) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 b_ack!1484)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1485) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000001 b_ack!1484)))
(assert (not (bvule b_ack!1484 #x0000000a)))
(assert (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!1484)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fe0000000000000)
               ((_ to_fp 11 53) a_ack!1485))))
(assert (not (bvule b_ack!1484 #x00000014)))
(assert (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!1484)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4000000000000000)
               ((_ to_fp 11 53) a_ack!1485))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4010000000000000)
                                  ((_ to_fp 11 53) a_ack!1485))
                          ((_ to_fp 11 53) a_ack!1485))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1485))
                           ((_ to_fp 11 53) a_ack!1485)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x403f000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x403f000000000000))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1485))
                           ((_ to_fp 11 53) a_ack!1485)))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1485))
                           ((_ to_fp 11 53) a_ack!1485)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x403f000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x403f000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1485))
                           ((_ to_fp 11 53) a_ack!1485)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x401c000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403f000000000000)
                                   a!1))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x403f000000000000)
                           a!1))))
  (fp.eq a!2 ((_ to_fp 11 53) #x401c000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1485))
                           ((_ to_fp 11 53) a_ack!1485)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x401c000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x401c000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403f000000000000)
                                   a!1)))))
  (fp.eq a!2
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x403f000000000000)
                 a!1)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1485))
                           ((_ to_fp 11 53) a_ack!1485)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4138324f00000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4157f21d40000000)
                                   a!1))
                   a!1)))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40bb250000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc102c7f800000000)
                                   a!2)
                           a!1))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fe3813813813814)
                         a!3)
                 ((_ to_fp 11 53) #x3fe3813813813814))
         a!3)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1485))
                           ((_ to_fp 11 53) a_ack!1485)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4138324f00000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4157f21d40000000)
                                   a!1))
                   a!1)))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40bb250000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc102c7f800000000)
                                   a!2)
                           a!1))))
  (not (fp.eq (fp.abs a!3) ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1485))
                           ((_ to_fp 11 53) a_ack!1485)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4138324f00000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4157f21d40000000)
                                   a!1))
                   a!1)))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40bb250000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc102c7f800000000)
                                   a!2)
                           a!1))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fe3813813813814)
                         a!3)
                 a!3)
         ((_ to_fp 11 53) #x3fe3813813813814))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1485))
                           ((_ to_fp 11 53) a_ack!1485)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc1be857454000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x41df2cf87d400000)
                                   a!1))
                   ((_ to_fp 11 53) #xc1be857454000000))))
  (fp.eq a!2
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x41df2cf87d400000)
                 a!1)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1485))
                           ((_ to_fp 11 53) a_ack!1485)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc1be857454000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x41df2cf87d400000)
                                   a!1))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x41df2cf87d400000)
                           a!1))))
  (fp.eq a!2 ((_ to_fp 11 53) #xc1be857454000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1485))
                           ((_ to_fp 11 53) a_ack!1485)))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) #xc1be857454000000)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x41df2cf87d400000)
                    a!1))
    a!1)))

(check-sat)
(exit)
