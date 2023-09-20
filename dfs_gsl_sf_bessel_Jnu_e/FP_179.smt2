(declare-fun b_ack!2555 () (_ BitVec 64))
(declare-fun a_ack!2556 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2555) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2556) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2555) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!2555))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!2555)
                       ((_ to_fp 11 53) b_ack!2555))
               ((_ to_fp 11 53) b_ack!2555))
       ((_ to_fp 11 53) b_ack!2555)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!2555))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!2555)
                       ((_ to_fp 11 53) b_ack!2555))
               ((_ to_fp 11 53) b_ack!2555))
       ((_ to_fp 11 53) b_ack!2555)))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) b_ack!2555)
                          ((_ to_fp 11 53) b_ack!2555))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x4024000000000000)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!2556)
                                  ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not a!1)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!2556) ((_ to_fp 11 53) #x4049000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2555) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!2556) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f947ae147ae147b)))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!2555)
                    ((_ to_fp 11 53) a_ack!2556))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))))))
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
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))
                           ((_ to_fp 11 53) #x3fd55ab82a3654b3)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2555)
                           ((_ to_fp 11 53) a_ack!2556))
                   ((_ to_fp 11 53) #x3fd55ab82a3654b3))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))
                           ((_ to_fp 11 53) #x3fd55ab82a3654b3)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2555)
                           ((_ to_fp 11 53) a_ack!2556))
                   ((_ to_fp 11 53) #x3fd55ab82a3654b3))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!2555)
                    ((_ to_fp 11 53) a_ack!2556))
            ((_ to_fp 11 53) #x3fef5c28f5c28f5c))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!2555)
                    ((_ to_fp 11 53) a_ack!2556))
            ((_ to_fp 11 53) #x3ff051eb851eb852))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))
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
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))
                           ((_ to_fp 11 53) #x3fd55ab77fc178bb)))))
  (not (fp.eq (fp.abs (fp.mul roundNearestTiesToEven a!1 a!1))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))
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
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))
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
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))
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
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))
                           ((_ to_fp 11 53) #x3fd55ab77fc178bb)))))
  (not (fp.eq (fp.abs (fp.mul roundNearestTiesToEven a!1 a!1))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))
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
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))
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
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))
                           ((_ to_fp 11 53) #x3fd55ab77fc178bb)))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))
                           ((_ to_fp 11 53) #x3fd55ab77fc178bb)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #xc01c000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #xc01c000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!2555)
                    ((_ to_fp 11 53) a_ack!2556))
            ((_ to_fp 11 53) #x3fec28f5c28f5c29))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!2555)
                    ((_ to_fp 11 53) a_ack!2556))
            ((_ to_fp 11 53) #x3ff1eb851eb851ec))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2555)
                           ((_ to_fp 11 53) a_ack!2556))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2555)
                           ((_ to_fp 11 53) a_ack!2556)))))
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
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2555)
                           ((_ to_fp 11 53) a_ack!2556))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2555)
                           ((_ to_fp 11 53) a_ack!2556)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))
                           ((_ to_fp 11 53) #x3fe5f6bac8bc9ea9)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4151087940000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x419670bb30000000)
                           (fp.mul roundNearestTiesToEven a!1 a!1))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x41b4db647e000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           (fp.mul roundNearestTiesToEven a!1 a!1)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!2 a!3)
                 a!2)
         a!3))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))
                           ((_ to_fp 11 53) #x3fe5f6bac8bc9ea9)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4151087940000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x419670bb30000000)
                           (fp.mul roundNearestTiesToEven a!1 a!1))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x41b4db647e000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           (fp.mul roundNearestTiesToEven a!1 a!1)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!2 a!3)
                 a!3)
         a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))
                           ((_ to_fp 11 53) #x3fe5f6bac8bc9ea9)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   (fp.mul roundNearestTiesToEven a!1 a!1))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x41ba98410c000000)
                         a!2)
                 ((_ to_fp 11 53) #x41ba98410c000000))
         a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))
                           ((_ to_fp 11 53) #x3fe5f6bac8bc9ea9)))))
(let ((a!2 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!1)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!1 a!1)))))
  (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))
                           ((_ to_fp 11 53) #x3fe5f6bac8bc9ea9)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   (fp.mul roundNearestTiesToEven a!1 a!1))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x41ba98410c000000)
                         a!2)
                 a!2)
         ((_ to_fp 11 53) #x41ba98410c000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))
                           ((_ to_fp 11 53) #x3fe5f6bac8bc9ea9)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 a!1)
                   (fp.mul roundNearestTiesToEven a!1 a!1))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4151087940000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x419670bb30000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x41b4db647e000000)
                           a!2))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x41ba98410c000000)
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   (fp.mul roundNearestTiesToEven a!1 a!1))))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x41a6298b8a000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2)))
                   a!4)))
  (fp.eq a!5
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x41a6298b8a000000)
                 (fp.mul roundNearestTiesToEven a!2 a!2)))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))
                           ((_ to_fp 11 53) #x3fe5f6bac8bc9ea9)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 a!1)
                   (fp.mul roundNearestTiesToEven a!1 a!1))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4151087940000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x419670bb30000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x41b4db647e000000)
                           a!2))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x41ba98410c000000)
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   (fp.mul roundNearestTiesToEven a!1 a!1))))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x41a6298b8a000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x41a6298b8a000000)
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
  (fp.eq a!5 a!4)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))
                           ((_ to_fp 11 53) #x3fe5f6bac8bc9ea9)))))
(let ((a!2 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  (fp.mul roundNearestTiesToEven a!1 a!1)
                                  (fp.mul roundNearestTiesToEven a!1 a!1)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))
                           ((_ to_fp 11 53) #x3fe5f6bac8bc9ea9)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 a!1)
                   (fp.mul roundNearestTiesToEven a!1 a!1))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4151087940000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x419670bb30000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x41b4db647e000000)
                           a!2))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x41ba98410c000000)
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   (fp.mul roundNearestTiesToEven a!1 a!1))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x41a6298b8a000000)
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!2 a!5)
                 a!2)
         a!5)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))
                           ((_ to_fp 11 53) #x3fe5f6bac8bc9ea9)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 a!1)
                   (fp.mul roundNearestTiesToEven a!1 a!1))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4151087940000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x419670bb30000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x41b4db647e000000)
                           a!2))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x41ba98410c000000)
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   (fp.mul roundNearestTiesToEven a!1 a!1))))))
(let ((a!5 (fp.abs (fp.add roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x41a6298b8a000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2))))))
  (not (fp.eq a!5 ((_ to_fp 11 53) #x0000000000000000)))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))
                           ((_ to_fp 11 53) #x3fe5f6bac8bc9ea9)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 a!1)
                   (fp.mul roundNearestTiesToEven a!1 a!1))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4151087940000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x419670bb30000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x41b4db647e000000)
                           a!2))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x41ba98410c000000)
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   (fp.mul roundNearestTiesToEven a!1 a!1))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x41a6298b8a000000)
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!2 a!5)
                 a!5)
         a!2)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))
                           ((_ to_fp 11 53) #x3fe5f6bac8bc9ea9)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4054400000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x407ce00000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!1))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4078100000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           (fp.mul roundNearestTiesToEven a!1 a!1)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!2 a!3)
                 a!2)
         a!3))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))
                           ((_ to_fp 11 53) #x3fe5f6bac8bc9ea9)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4054400000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x407ce00000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!1))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4078100000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           (fp.mul roundNearestTiesToEven a!1 a!1)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!2 a!3)
                 a!3)
         a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))
                           ((_ to_fp 11 53) #x3fe5f6bac8bc9ea9)))))
(let ((a!2 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #xbf16781948b0fcd7)
                                  (fp.mul roundNearestTiesToEven a!1 a!1)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))
                           ((_ to_fp 11 53) #x3fe5f6bac8bc9ea9)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4054400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x407ce00000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4078100000000000)
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!1)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbf16781948b0fcd7)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           a!2)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbf16781948b0fcd7)
                           (fp.mul roundNearestTiesToEven a!1 a!1)))))
  (fp.eq a!3 a!2)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))
                           ((_ to_fp 11 53) #x3fe5f6bac8bc9ea9)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4054400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x407ce00000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4078100000000000)
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!1)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))))))
  (not (fp.eq (fp.abs a!2) ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2555)
                                   ((_ to_fp 11 53) a_ack!2556))
                           ((_ to_fp 11 53) #x3fe5f6bac8bc9ea9)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4054400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x407ce00000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4078100000000000)
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!1)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbf16781948b0fcd7)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           a!2)
                   a!2)))
  (fp.eq a!3
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #xbf16781948b0fcd7)
                 (fp.mul roundNearestTiesToEven a!1 a!1)))))))

(check-sat)
(exit)
