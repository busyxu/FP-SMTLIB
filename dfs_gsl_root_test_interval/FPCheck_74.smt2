(declare-fun x_hi_ack!382 () (_ BitVec 64))
(declare-fun x_lo_ack!383 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) x_lo_ack!383) ((_ to_fp 11 53) x_hi_ack!382))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!383)
                       ((_ to_fp 11 53) x_hi_ack!382))
               ((_ to_fp 11 53) x_lo_ack!383))
       ((_ to_fp 11 53) x_hi_ack!382)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!383)
                       ((_ to_fp 11 53) x_hi_ack!382))
               ((_ to_fp 11 53) x_hi_ack!382))
       ((_ to_fp 11 53) x_lo_ack!383)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!383))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!383))))
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
                                   ((_ to_fp 11 53) x_hi_ack!382))
                           ((_ to_fp 11 53) #x0000000000000000)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) x_hi_ack!382))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) x_hi_ack!382))
                 a!1)
         ((_ to_fp 11 53) x_hi_ack!382))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) x_hi_ack!382))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) x_hi_ack!382))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) x_hi_ack!382))
                 ((_ to_fp 11 53) x_hi_ack!382))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!382))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!382))))
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
                                   ((_ to_fp 11 53) x_hi_ack!382))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!382))))
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
                                   ((_ to_fp 11 53) x_hi_ack!382))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!382))))
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
                                   ((_ to_fp 11 53) x_lo_ack!383))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!383))))
  (fp.lt (fp.add roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #xc014000000000000))
         ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!382))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!382))))
  (not (fp.lt (fp.add roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #xc014000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!383))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!383))))
  (not (fp.gt (fp.add roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #xc014000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!382))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!382))))
  (not (fp.lt (fp.add roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #xc014000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!382))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!382))))
  (fp.gt (fp.add roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #xc014000000000000))
         ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!382))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!382))))
  (fp.gt (fp.add roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #xc014000000000000))
         ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!383))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!383)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!382))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!382))))
(let ((a!3 (fp.lt (fp.abs (fp.add roundNearestTiesToEven
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
                                   ((_ to_fp 11 53) x_hi_ack!382))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!382))))
  (not (fp.eq (fp.add roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #xc014000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_lo_ack!383)
                                   ((_ to_fp 11 53) x_hi_ack!382))))))
(let ((a!2 (fp.leq a!1
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ca0000000000000)
                           (fp.abs ((_ to_fp 11 53) x_hi_ack!382))))))
  (not a!2))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x_hi_ack!382)
                                  ((_ to_fp 11 53) x_lo_ack!383)))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ca0000000000000)
                          (fp.abs ((_ to_fp 11 53) x_hi_ack!382))))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!383))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!383)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!382))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!382))))
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
                                   ((_ to_fp 11 53) x_hi_ack!382))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!382)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!383))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!383))))
  (FPCHECK_FSUB_OVERFLOW
    #x3ff0000000000000
    (fp.div roundNearestTiesToEven
            (fp.add roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #xc014000000000000))
            (fp.add roundNearestTiesToEven
                    a!2
                    ((_ to_fp 11 53) #xc014000000000000))))))

(check-sat)
(exit)
