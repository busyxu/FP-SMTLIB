(declare-fun x_hi_ack!1290 () (_ BitVec 64))
(declare-fun x_lo_ack!1291 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) x_lo_ack!1291) ((_ to_fp 11 53) x_hi_ack!1290))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!1291)
                       ((_ to_fp 11 53) x_hi_ack!1290))
               ((_ to_fp 11 53) x_lo_ack!1291))
       ((_ to_fp 11 53) x_hi_ack!1290)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!1291)
                       ((_ to_fp 11 53) x_hi_ack!1290))
               ((_ to_fp 11 53) x_hi_ack!1290))
       ((_ to_fp 11 53) x_lo_ack!1291)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1291))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1291))))
(let ((a!2 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     a!1
                                     ((_ to_fp 11 53) #xc014000000000000)))))
      (a!3 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #xc014000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!2 a!3)))))
(assert (let ((a!1 (fp.abs (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1290))
                           ((_ to_fp 11 53) #x0000000000000000)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) x_hi_ack!1290))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) x_hi_ack!1290))
                 a!1)
         ((_ to_fp 11 53) x_hi_ack!1290))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) x_hi_ack!1290))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) x_hi_ack!1290))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) x_hi_ack!1290))
                 ((_ to_fp 11 53) x_hi_ack!1290))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1290))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1290))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #xc014000000000000))
                 a!1)
         ((_ to_fp 11 53) #xc014000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1290))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1290))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #xc014000000000000))
                 ((_ to_fp 11 53) #xc014000000000000))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1290))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1290))))
(let ((a!2 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     a!1
                                     ((_ to_fp 11 53) #xc014000000000000)))))
      (a!3 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #xc014000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!2 a!3)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1291))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1291))))
  (fp.lt (fp.add roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #xc014000000000000))
         ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1290))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1290))))
  (not (fp.lt (fp.add roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #xc014000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1291))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1291))))
  (not (fp.gt (fp.add roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #xc014000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1290))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1290))))
  (not (fp.lt (fp.add roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #xc014000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1290))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1290))))
  (fp.gt (fp.add roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #xc014000000000000))
         ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1290))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1290))))
  (fp.gt (fp.add roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #xc014000000000000))
         ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1291))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1291)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1290))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1290))))
  (fp.lt (fp.abs (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #xc014000000000000)))
         (fp.abs (fp.add roundNearestTiesToEven
                         a!2
                         ((_ to_fp 11 53) #xc014000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1291))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1291))))
  (not (fp.eq (fp.add roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #xc014000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1290)
                                   ((_ to_fp 11 53) x_lo_ack!1291))))))
(let ((a!2 (fp.leq a!1
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ca0000000000000)
                           (fp.abs ((_ to_fp 11 53) x_lo_ack!1291))))))
  (not a!2))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x_hi_ack!1290)
                                  ((_ to_fp 11 53) x_lo_ack!1291)))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ca0000000000000)
                          (fp.abs ((_ to_fp 11 53) x_lo_ack!1291))))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1290))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1290)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1291))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1291))))
(let ((a!3 (fp.leq (fp.abs (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #xc014000000000000)))
                   (fp.abs (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #xc014000000000000))))))
  (not a!3))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1291))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1291)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1290))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1290))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!3)
                 a!3)
         ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1291))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1291)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1290))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1290))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!3))
         a!3))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1290)
                                   ((_ to_fp 11 53) x_lo_ack!1291)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1291))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1291)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1290))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1290))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #xc014000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #xc014000000000000))))))
  (not (fp.gt a!4 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4008000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1290)
                                   ((_ to_fp 11 53) x_lo_ack!1291)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1291))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1291)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1290))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1290))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #xc014000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #xc014000000000000))))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ca0000000000000)
                           (fp.abs ((_ to_fp 11 53) x_lo_ack!1291)))
                   a!4))
      (a!6 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1290)
                                   ((_ to_fp 11 53) x_lo_ack!1291))
                           a!4))))
  (not (fp.lt (fp.sub roundNearestTiesToEven
                      (fp.mul roundNearestTiesToEven a!1 a!4)
                      (fp.abs a!5))
              a!6))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1290)
                                   ((_ to_fp 11 53) x_lo_ack!1291)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1291))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1291)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1290))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1290))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1290)
                                   ((_ to_fp 11 53) x_lo_ack!1291))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
  (fp.lt (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4000000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x8000000000000000)
                         (fp.mul roundNearestTiesToEven a!1 a!4)))
         a!5)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1290)
                                   ((_ to_fp 11 53) x_lo_ack!1291)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1291))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1291)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1290))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1290))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
  (fp.gt a!5
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ca0000000000000)
                 (fp.abs ((_ to_fp 11 53) x_lo_ack!1291))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_hi_ack!1290)
                                   ((_ to_fp 11 53) x_lo_ack!1291)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!1291))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!1291)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!1290))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!1290))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #xc014000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xc014000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_lo_ack!1291)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!5)
                           ((_ to_fp 11 53) #x0000000000000000))
                   a!5)))
  (FPCHECK_FADD_OVERFLOW a!6 #xc014000000000000))))))

(check-sat)
(exit)
