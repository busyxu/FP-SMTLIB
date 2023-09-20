(declare-fun a_ack!1891 () (_ BitVec 64))
(declare-fun b_ack!1890 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1891) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 b_ack!1890)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1891) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000001 b_ack!1890)))
(assert (not (bvule b_ack!1890 #x0000000a)))
(assert (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!1890)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fe0000000000000)
               ((_ to_fp 11 53) a_ack!1891))))
(assert (not (bvule b_ack!1890 #x00000014)))
(assert (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!1890)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4000000000000000)
               ((_ to_fp 11 53) a_ack!1891))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4010000000000000)
                                  ((_ to_fp 11 53) a_ack!1891))
                          ((_ to_fp 11 53) a_ack!1891))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1891))
                           ((_ to_fp 11 53) a_ack!1891)))))
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
                                   ((_ to_fp 11 53) a_ack!1891))
                           ((_ to_fp 11 53) a_ack!1891)))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1891))
                           ((_ to_fp 11 53) a_ack!1891)))))
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
                                   ((_ to_fp 11 53) a_ack!1891))
                           ((_ to_fp 11 53) a_ack!1891)))))
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
                                   ((_ to_fp 11 53) a_ack!1891))
                           ((_ to_fp 11 53) a_ack!1891)))))
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
                                   ((_ to_fp 11 53) a_ack!1891))
                           ((_ to_fp 11 53) a_ack!1891)))))
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
                                   ((_ to_fp 11 53) a_ack!1891))
                           ((_ to_fp 11 53) a_ack!1891)))))
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
                                   ((_ to_fp 11 53) a_ack!1891))
                           ((_ to_fp 11 53) a_ack!1891)))))
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
                                   ((_ to_fp 11 53) a_ack!1891))
                           ((_ to_fp 11 53) a_ack!1891)))))
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
                                   ((_ to_fp 11 53) a_ack!1891))
                           ((_ to_fp 11 53) a_ack!1891)))))
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
                                   ((_ to_fp 11 53) a_ack!1891))
                           ((_ to_fp 11 53) a_ack!1891)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc1be857454000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x41df2cf87d400000)
                                   a!1))
                   a!1)))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc142ea6a00000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4186e4a7f0000000)
                                   a!2)
                           a!1))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ffa01a01a01a01a)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40f1235000000000)
                                   (fp.mul roundNearestTiesToEven a!3 a!1)))
                   ((_ to_fp 11 53) #x3ffa01a01a01a01a))))
  (fp.eq a!4
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #x40f1235000000000)
                 (fp.mul roundNearestTiesToEven a!3 a!1))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1891))
                           ((_ to_fp 11 53) a_ack!1891)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc1be857454000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x41df2cf87d400000)
                                   a!1))
                   a!1)))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc142ea6a00000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4186e4a7f0000000)
                                   a!2)
                           a!1))))
(let ((a!4 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x40f1235000000000)
                                  (fp.mul roundNearestTiesToEven a!3 a!1)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!4))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1891))
                           ((_ to_fp 11 53) a_ack!1891)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc1be857454000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x41df2cf87d400000)
                                   a!1))
                   a!1)))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc142ea6a00000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4186e4a7f0000000)
                                   a!2)
                           a!1))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ffa01a01a01a01a)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40f1235000000000)
                                   (fp.mul roundNearestTiesToEven a!3 a!1)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40f1235000000000)
                           (fp.mul roundNearestTiesToEven a!3 a!1)))))
  (fp.eq a!4 ((_ to_fp 11 53) #x3ffa01a01a01a01a)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1891))
                           ((_ to_fp 11 53) a_ack!1891)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x427cd9cda00b5000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x429e0327e3572400)
                                   a!1))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x429e0327e3572400)
                           a!1))))
  (fp.eq a!2 ((_ to_fp 11 53) #x427cd9cda00b5000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1891))
                           ((_ to_fp 11 53) a_ack!1891)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x427cd9cda00b5000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x427cd9cda00b5000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x429e0327e3572400)
                                   a!1)))))
  (fp.eq a!2
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x429e0327e3572400)
                 a!1)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1891))
                           ((_ to_fp 11 53) a_ack!1891)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x427cd9cda00b5000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x429e0327e3572400)
                                   a!1))
                   a!1)))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x420095bd56500000)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc244df3f4fdd0000)
                                   a!2)
                           a!1))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4155559440000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc1b11d8c4d000000)
                                   (fp.mul roundNearestTiesToEven a!3 a!1))
                           a!1))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fe2e9e8cd187470)
                         a!4)
                 ((_ to_fp 11 53) #x3fe2e9e8cd187470))
         a!4))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1891))
                           ((_ to_fp 11 53) a_ack!1891)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x427cd9cda00b5000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x429e0327e3572400)
                                   a!1))
                   a!1)))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x420095bd56500000)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc244df3f4fdd0000)
                                   a!2)
                           a!1))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4155559440000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc1b11d8c4d000000)
                                   (fp.mul roundNearestTiesToEven a!3 a!1))
                           a!1))))
  (not (fp.eq (fp.abs a!4) ((_ to_fp 11 53) #x0000000000000000))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1891))
                           ((_ to_fp 11 53) a_ack!1891)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x427cd9cda00b5000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x429e0327e3572400)
                                   a!1))
                   a!1)))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x420095bd56500000)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc244df3f4fdd0000)
                                   a!2)
                           a!1))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4155559440000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc1b11d8c4d000000)
                                   (fp.mul roundNearestTiesToEven a!3 a!1))
                           a!1))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fe2e9e8cd187470)
                         a!4)
                 a!4)
         ((_ to_fp 11 53) #x3fe2e9e8cd187470)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1891))
                           ((_ to_fp 11 53) a_ack!1891)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1891))
                           ((_ to_fp 11 53) a_ack!1891)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           ((_ to_fp 11 53) a_ack!1891))
                   ((_ to_fp 11 53) a_ack!1891)))
      (a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             b_ack!1890)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!1891)))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x400921fb54442d18)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   (fp.div roundNearestTiesToEven a!1 a!3))))
  (not (fp.eq (fp.abs a!4) ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           ((_ to_fp 11 53) a_ack!1891))
                   ((_ to_fp 11 53) a_ack!1891)))
      (a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             b_ack!1890)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!1891)))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x400921fb54442d18)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x400921fb54442d18)))))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc08eb00000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40ad860000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   (fp.div roundNearestTiesToEven a!1 a!3)))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4054c00000000000)
                   (fp.mul roundNearestTiesToEven
                           a!5
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!7 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4001111111111111)
                                   a!6))
                   a!4)))
  (fp.eq a!7
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4001111111111111)
                 a!6)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1891))
                           ((_ to_fp 11 53) a_ack!1891)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc08eb00000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40ad860000000000)
                                   a!1))
                   a!1)))
(let ((a!3 (fp.abs (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4001111111111111)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4054c00000000000)
                                   a!2)))))
  (not (fp.eq a!3 ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           ((_ to_fp 11 53) a_ack!1891))
                   ((_ to_fp 11 53) a_ack!1891)))
      (a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             b_ack!1890)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!1891)))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x400921fb54442d18)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x400921fb54442d18)))))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc08eb00000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40ad860000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   (fp.div roundNearestTiesToEven a!1 a!3)))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4054c00000000000)
                   (fp.mul roundNearestTiesToEven
                           a!5
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!7 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4001111111111111)
                                   a!6))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4001111111111111)
                           a!6))))
  (fp.eq a!7 a!4))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           ((_ to_fp 11 53) a_ack!1891))
                   ((_ to_fp 11 53) a_ack!1891)))
      (a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             b_ack!1890)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!1891)))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x400921fb54442d18)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   (fp.div roundNearestTiesToEven a!1 a!3))))
  (not (fp.eq (fp.abs a!4) ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           ((_ to_fp 11 53) a_ack!1891))
                   ((_ to_fp 11 53) a_ack!1891)))
      (a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             b_ack!1890)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!1891)))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x400921fb54442d18)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x400921fb54442d18)))))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc1be857454000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x41df2cf87d400000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   (fp.div roundNearestTiesToEven a!1 a!3)))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4186e4a7f0000000)
                   (fp.mul roundNearestTiesToEven
                           a!5
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc142ea6a00000000)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40f1235000000000)
                   (fp.mul roundNearestTiesToEven
                           a!7
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!9 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ffa01a01a01a01a)
                                   a!8))
                   a!4)))
  (fp.eq a!9
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ffa01a01a01a01a)
                 a!8)))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1891))
                           ((_ to_fp 11 53) a_ack!1891)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc1be857454000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x41df2cf87d400000)
                                   a!1))
                   a!1)))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc142ea6a00000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4186e4a7f0000000)
                                   a!2)
                           a!1))))
(let ((a!4 (fp.abs (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ffa01a01a01a01a)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40f1235000000000)
                                   (fp.mul roundNearestTiesToEven a!3 a!1))))))
  (not (fp.eq a!4 ((_ to_fp 11 53) #x0000000000000000))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           ((_ to_fp 11 53) a_ack!1891))
                   ((_ to_fp 11 53) a_ack!1891)))
      (a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             b_ack!1890)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!1891)))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x400921fb54442d18)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x400921fb54442d18)))))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc1be857454000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x41df2cf87d400000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   (fp.div roundNearestTiesToEven a!1 a!3)))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4186e4a7f0000000)
                   (fp.mul roundNearestTiesToEven
                           a!5
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc142ea6a00000000)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40f1235000000000)
                   (fp.mul roundNearestTiesToEven
                           a!7
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!9 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ffa01a01a01a01a)
                                   a!8))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ffa01a01a01a01a)
                           a!8))))
  (fp.eq a!9 a!4))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           ((_ to_fp 11 53) a_ack!1891))
                   ((_ to_fp 11 53) a_ack!1891)))
      (a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             b_ack!1890)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!1891)))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x400921fb54442d18)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x400921fb54442d18)))))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc1be857454000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x41df2cf87d400000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   (fp.div roundNearestTiesToEven a!1 a!3)))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4186e4a7f0000000)
                   (fp.mul roundNearestTiesToEven
                           a!5
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc142ea6a00000000)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40f1235000000000)
                   (fp.mul roundNearestTiesToEven
                           a!7
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ffa01a01a01a01a)
                                   a!8))
                   (fp.div roundNearestTiesToEven a!1 a!3))))
(let ((a!10 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                   a!9
                                   (fp.div roundNearestTiesToEven a!1 a!3)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not a!10)))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           ((_ to_fp 11 53) a_ack!1891))
                   ((_ to_fp 11 53) a_ack!1891)))
      (a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             b_ack!1890)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!1891)))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x400921fb54442d18)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x400921fb54442d18)))))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc1be857454000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x41df2cf87d400000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   (fp.div roundNearestTiesToEven a!1 a!3)))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4186e4a7f0000000)
                   (fp.mul roundNearestTiesToEven
                           a!5
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc142ea6a00000000)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40f1235000000000)
                   (fp.mul roundNearestTiesToEven
                           a!7
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ffa01a01a01a01a)
                                   a!8))
                   (fp.div roundNearestTiesToEven a!1 a!3))))
(let ((a!10 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    (fp.div roundNearestTiesToEven a!1 a!3))
                            (fp.div roundNearestTiesToEven a!1 a!3))
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.div roundNearestTiesToEven a!1 a!3)))))
  (fp.eq a!10 (fp.div roundNearestTiesToEven a!1 a!3))))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             b_ack!1890)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!1891)))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!1891))
                           ((_ to_fp 11 53) a_ack!1891))
                   a!2)))
  (not (fp.eq (fp.abs a!3) ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           ((_ to_fp 11 53) a_ack!1891))
                   ((_ to_fp 11 53) a_ack!1891)))
      (a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             b_ack!1890)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!1891)))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x400921fb54442d18)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x400921fb54442d18)))))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc1be857454000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x41df2cf87d400000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   (fp.div roundNearestTiesToEven a!1 a!3)))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4186e4a7f0000000)
                   (fp.mul roundNearestTiesToEven
                           a!5
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc142ea6a00000000)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40f1235000000000)
                   (fp.mul roundNearestTiesToEven
                           a!7
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ffa01a01a01a01a)
                                   a!8))
                   (fp.div roundNearestTiesToEven a!1 a!3))))
(let ((a!10 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    (fp.div roundNearestTiesToEven a!1 a!3))
                            (fp.div roundNearestTiesToEven a!1 a!3))
                    (fp.div roundNearestTiesToEven a!1 a!3))))
  (fp.eq a!10
         (fp.mul roundNearestTiesToEven
                 a!9
                 (fp.div roundNearestTiesToEven a!1 a!3)))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           ((_ to_fp 11 53) a_ack!1891))
                   ((_ to_fp 11 53) a_ack!1891)))
      (a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             b_ack!1890)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!1891)))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x400921fb54442d18)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x400921fb54442d18)))))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc1be857454000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x41df2cf87d400000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   (fp.div roundNearestTiesToEven a!1 a!3)))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4186e4a7f0000000)
                   (fp.mul roundNearestTiesToEven
                           a!5
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc142ea6a00000000)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40f1235000000000)
                   (fp.mul roundNearestTiesToEven
                           a!7
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ffa01a01a01a01a)
                                   a!8))
                   (fp.div roundNearestTiesToEven a!1 a!3))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.div roundNearestTiesToEven a!1 a!3))
            (fp.div roundNearestTiesToEven a!1 a!3))
    (fp.div roundNearestTiesToEven a!1 a!3)))))))))

(check-sat)
(exit)
