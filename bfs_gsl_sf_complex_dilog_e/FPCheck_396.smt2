(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun b_ack!1774 () (_ BitVec 64))
(declare-fun a_ack!1775 () (_ BitVec 64))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!1775)
               (CF_sin b_ack!1774))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.geq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!1775)
                     (CF_cos b_ack!1774))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.geq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!1775)
                     (CF_cos b_ack!1774))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.gt (fp.sub roundNearestTiesToEven
                          ((_ to_fp 11 53) #x8000000000000000)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!1775)
                                  (CF_cos b_ack!1774)))
                  ((_ to_fp 11 53) #x4000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.gt (fp.sub roundNearestTiesToEven
                          ((_ to_fp 11 53) #x8000000000000000)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!1775)
                                  (CF_cos b_ack!1774)))
                  ((_ to_fp 11 53) #x3ff028f5c28f5c29))))
  (not a!1)))
(assert (let ((a!1 (fp.gt (fp.sub roundNearestTiesToEven
                          ((_ to_fp 11 53) #x8000000000000000)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!1775)
                                  (CF_cos b_ack!1774)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (fp.sub roundNearestTiesToEven
                          ((_ to_fp 11 53) #x8000000000000000)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!1775)
                                  (CF_cos b_ack!1774)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.gt (fp.sub roundNearestTiesToEven
                          ((_ to_fp 11 53) #x8000000000000000)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!1775)
                                  (CF_cos b_ack!1774)))
                  ((_ to_fp 11 53) #x3fe0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.gt (fp.sub roundNearestTiesToEven
                          ((_ to_fp 11 53) #x8000000000000000)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!1775)
                                  (CF_cos b_ack!1774)))
                  ((_ to_fp 11 53) #x3fd0000000000000))))
  (not a!1)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x8000000000000000)
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1775)
                       (CF_cos b_ack!1774)))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1775)
                                   (CF_cos b_ack!1774))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1775)
                           (CF_cos b_ack!1774)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1775)
                                   (CF_cos b_ack!1774))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1775)
                           (CF_cos b_ack!1774)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1775)
                           (CF_cos b_ack!1774)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!1)
                                   ((_ to_fp 11 53) #x3fd0000000000000)))
                   a!1)))
  (fp.eq a!2
         (fp.mul roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 ((_ to_fp 11 53) #x3fd0000000000000))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1775)
                           (CF_cos b_ack!1774)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!1)
                                   ((_ to_fp 11 53) #x3fd0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           ((_ to_fp 11 53) #x3fd0000000000000)))))
  (fp.eq a!2 a!1))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1775)
                           (CF_cos b_ack!1774)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           ((_ to_fp 11 53) #x3fd0000000000000))
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!1)
                                   ((_ to_fp 11 53) #x3fd0000000000000))))))
  (not (fp.lt (fp.abs a!2) ((_ to_fp 11 53) #x3cb0000000000000))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1775)
                           (CF_cos b_ack!1774)))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!1)
            ((_ to_fp 11 53) #x3fd0000000000000))
    a!1)))

(check-sat)
(exit)
