(declare-fun x_hi_ack!214 () (_ BitVec 64))
(declare-fun x_lo_ack!215 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) x_lo_ack!215) ((_ to_fp 11 53) x_hi_ack!214))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!215)
                       ((_ to_fp 11 53) x_hi_ack!214))
               ((_ to_fp 11 53) x_lo_ack!215))
       ((_ to_fp 11 53) x_hi_ack!214)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!215)
                       ((_ to_fp 11 53) x_hi_ack!214))
               ((_ to_fp 11 53) x_hi_ack!214))
       ((_ to_fp 11 53) x_lo_ack!215)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!215))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!215))))
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
                                   ((_ to_fp 11 53) x_hi_ack!214))
                           ((_ to_fp 11 53) #x0000000000000000)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) x_hi_ack!214))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) x_hi_ack!214))
                 a!1)
         ((_ to_fp 11 53) x_hi_ack!214))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) x_hi_ack!214))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) x_hi_ack!214))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) x_hi_ack!214))
                 ((_ to_fp 11 53) x_hi_ack!214))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!214))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!214))))
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
                                   ((_ to_fp 11 53) x_hi_ack!214))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!214))))
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
                                   ((_ to_fp 11 53) x_hi_ack!214))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!214))))
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
                                   ((_ to_fp 11 53) x_lo_ack!215))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!215))))
  (fp.lt (fp.add roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #xc014000000000000))
         ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!214))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!214))))
  (not (fp.lt (fp.add roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #xc014000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!215))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!215))))
  (not (fp.gt (fp.add roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #xc014000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!214))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!214))))
  (not (fp.lt (fp.add roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #xc014000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!214))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!214))))
  (fp.gt (fp.add roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #xc014000000000000))
         ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_hi_ack!214))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_hi_ack!214))))
  (fp.gt (fp.add roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #xc014000000000000))
         ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW x_hi_ack!214 x_lo_ack!215))

(check-sat)
(exit)
