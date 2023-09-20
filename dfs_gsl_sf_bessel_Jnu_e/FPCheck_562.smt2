(declare-fun b_ack!2125 () (_ BitVec 64))
(declare-fun a_ack!2126 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2125) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2126) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2125) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!2125))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!2125)
                       ((_ to_fp 11 53) b_ack!2125))
               ((_ to_fp 11 53) b_ack!2125))
       ((_ to_fp 11 53) b_ack!2125)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!2125))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!2125)
                       ((_ to_fp 11 53) b_ack!2125))
               ((_ to_fp 11 53) b_ack!2125))
       ((_ to_fp 11 53) b_ack!2125)))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) b_ack!2125)
                          ((_ to_fp 11 53) b_ack!2125))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x4024000000000000)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!2126)
                                  ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not a!1)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!2126) ((_ to_fp 11 53) #x4049000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2125) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!2126) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2125)
                                   ((_ to_fp 11 53) a_ack!2126))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f947ae147ae147b)))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!2125)
                    ((_ to_fp 11 53) a_ack!2126))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2125)
                                   ((_ to_fp 11 53) a_ack!2126))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2125)
                                   ((_ to_fp 11 53) a_ack!2126))))))
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
                                   ((_ to_fp 11 53) b_ack!2125)
                                   ((_ to_fp 11 53) a_ack!2126))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2125)
                                   ((_ to_fp 11 53) a_ack!2126))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2125)
                                   ((_ to_fp 11 53) a_ack!2126))
                           ((_ to_fp 11 53) #x3fd55ab82a3654b3)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2125)
                           ((_ to_fp 11 53) a_ack!2126))
                   ((_ to_fp 11 53) #x3fd55ab82a3654b3))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2125)
                                   ((_ to_fp 11 53) a_ack!2126))
                           ((_ to_fp 11 53) #x3fd55ab82a3654b3)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2125)
                           ((_ to_fp 11 53) a_ack!2126))
                   ((_ to_fp 11 53) #x3fd55ab82a3654b3))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!2125)
                    ((_ to_fp 11 53) a_ack!2126))
            ((_ to_fp 11 53) #x3fef5c28f5c28f5c))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!2125)
                    ((_ to_fp 11 53) a_ack!2126))
            ((_ to_fp 11 53) #x3ff051eb851eb852))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2125)
                                   ((_ to_fp 11 53) a_ack!2126))
                           ((_ to_fp 11 53) #x3fd55ab77fc178bb)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4078100000000000)
                         (fp.mul roundNearestTiesToEven a!1 a!1))
                 ((_ to_fp 11 53) #x4078100000000000))
         (fp.mul roundNearestTiesToEven a!1 a!1))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2125)
                                   ((_ to_fp 11 53) a_ack!2126))
                           ((_ to_fp 11 53) #x3fd55ab77fc178bb)))))
  (not (fp.eq (fp.abs (fp.mul roundNearestTiesToEven a!1 a!1))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2125)
                                   ((_ to_fp 11 53) a_ack!2126))
                           ((_ to_fp 11 53) #x3fd55ab77fc178bb)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4078100000000000)
                         (fp.mul roundNearestTiesToEven a!1 a!1))
                 (fp.mul roundNearestTiesToEven a!1 a!1))
         ((_ to_fp 11 53) #x4078100000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2125)
                                   ((_ to_fp 11 53) a_ack!2126))
                           ((_ to_fp 11 53) #x3fd55ab77fc178bb)))))
(let ((a!2 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4078100000000000)
                                  (fp.mul roundNearestTiesToEven a!1 a!1)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2125)
                                   ((_ to_fp 11 53) a_ack!2126))
                           ((_ to_fp 11 53) #x3fd55ab77fc178bb)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4078100000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4078100000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!1)))))
  (fp.eq a!2 (fp.mul roundNearestTiesToEven a!1 a!1)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2125)
                                   ((_ to_fp 11 53) a_ack!2126))
                           ((_ to_fp 11 53) #x3fd55ab77fc178bb)))))
  (not (fp.eq (fp.abs (fp.mul roundNearestTiesToEven a!1 a!1))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2125)
                                   ((_ to_fp 11 53) a_ack!2126))
                           ((_ to_fp 11 53) #x3fd55ab77fc178bb)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4078100000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   (fp.mul roundNearestTiesToEven a!1 a!1))))
  (fp.eq a!2
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4078100000000000)
                 (fp.mul roundNearestTiesToEven a!1 a!1))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2125)
                                   ((_ to_fp 11 53) a_ack!2126))
                           ((_ to_fp 11 53) #x3fd55ab77fc178bb)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #xc01c000000000000)
                         a!1)
                 ((_ to_fp 11 53) #xc01c000000000000))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2125)
                                   ((_ to_fp 11 53) a_ack!2126))
                           ((_ to_fp 11 53) #x3fd55ab77fc178bb)))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2125)
                                   ((_ to_fp 11 53) a_ack!2126))
                           ((_ to_fp 11 53) #x3fd55ab77fc178bb)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #xc01c000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #xc01c000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!2125)
                    ((_ to_fp 11 53) a_ack!2126))
            ((_ to_fp 11 53) #x3fec28f5c28f5c29))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!2125)
                    ((_ to_fp 11 53) a_ack!2126))
            ((_ to_fp 11 53) #x3ff1eb851eb851ec))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2125)
                                   ((_ to_fp 11 53) a_ack!2126))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2125)
                                   ((_ to_fp 11 53) a_ack!2126))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2125)
                           ((_ to_fp 11 53) a_ack!2126))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2125)
                           ((_ to_fp 11 53) a_ack!2126)))))
(let ((a!2 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  a!1)
                          a!1)
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2125)
                                   ((_ to_fp 11 53) a_ack!2126))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2125)
                                   ((_ to_fp 11 53) a_ack!2126))))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2125)
                           ((_ to_fp 11 53) a_ack!2126))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2125)
                           ((_ to_fp 11 53) a_ack!2126)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!2125)
          ((_ to_fp 11 53) a_ack!2126))
  #x3fe5f6bac8bc9ea9))

(check-sat)
(exit)
