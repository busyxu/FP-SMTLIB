(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun a_ack!420 () (_ BitVec 64))
(declare-fun b_ack!421 () (_ BitVec 64))
(declare-fun m_ack!424 () (_ BitVec 64))
(declare-fun CF_cos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun epsrel_ack!423 () (_ BitVec 64))
(declare-fun epsabs_ack!422 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (let ((a!1 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     (CF_cos a_ack!420)
                                     ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  (CF_cos a_ack!420)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!1 a!2))))
(assert (let ((a!1 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     (CF_cos b_ack!421)
                                     ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  (CF_cos b_ack!421)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!1 a!2))))
(assert (let ((a!1 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     (CF_cos m_ack!424)
                                     ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  (CF_cos m_ack!424)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!1 a!2))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!420) ((_ to_fp 11 53) b_ack!421))))
(assert (not (fp.geq ((_ to_fp 11 53) m_ack!424) ((_ to_fp 11 53) b_ack!421))))
(assert (not (fp.leq ((_ to_fp 11 53) m_ack!424) ((_ to_fp 11 53) a_ack!420))))
(assert (not (fp.geq (fp.add roundNearestTiesToEven
                     (CF_cos m_ack!424)
                     ((_ to_fp 11 53) #x3ff0000000000000))
             (fp.add roundNearestTiesToEven
                     (CF_cos a_ack!420)
                     ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (not (fp.geq (fp.add roundNearestTiesToEven
                     (CF_cos m_ack!424)
                     ((_ to_fp 11 53) #x3ff0000000000000))
             (fp.add roundNearestTiesToEven
                     (CF_cos b_ack!421)
                     ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!421)
                       ((_ to_fp 11 53) a_ack!420))
               ((_ to_fp 11 53) a_ack!420))
       ((_ to_fp 11 53) b_ack!421)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!421)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!421)
                       ((_ to_fp 11 53) a_ack!420)))
       ((_ to_fp 11 53) a_ack!420)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd87221858bc59c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!421)
                           ((_ to_fp 11 53) a_ack!420)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven ((_ to_fp 11 53) a_ack!420) a!1)
                 ((_ to_fp 11 53) a_ack!420))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd87221858bc59c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!421)
                           ((_ to_fp 11 53) a_ack!420)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven ((_ to_fp 11 53) a_ack!420) a!1)
                 a!1)
         ((_ to_fp 11 53) a_ack!420))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!420)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd87221858bc59c)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!421)
                                   ((_ to_fp 11 53) a_ack!420))))))
(let ((a!2 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     (CF_cos a!1)
                                     ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!3 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  (CF_cos a!1)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!2 a!3)))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) m_ack!424)
                       ((_ to_fp 11 53) a_ack!420))
               ((_ to_fp 11 53) a_ack!420))
       ((_ to_fp 11 53) m_ack!424)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) m_ack!424)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) m_ack!424)
                       ((_ to_fp 11 53) a_ack!420)))
       ((_ to_fp 11 53) a_ack!420)))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) #x0000000000000000)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3e50000000000000)
                          (fp.abs ((_ to_fp 11 53) m_ack!424))))))
  (not a!1)))
(assert (let ((a!1 (fp.lt ((_ to_fp 11 53) m_ack!424)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fe0000000000000)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!420)
                                  ((_ to_fp 11 53) b_ack!421))))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd87221858bc59c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) m_ack!424)
                                   ((_ to_fp 11 53) a_ack!420))))))
  (fp.geq (fp.abs a!1)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3e50000000000000)
                  (fp.abs ((_ to_fp 11 53) m_ack!424))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd87221858bc59c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) m_ack!424)
                                   ((_ to_fp 11 53) a_ack!420))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (CF_cos (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) m_ack!424)
                                   a!1))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (CF_cos (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) m_ack!424)
                                   a!1)))))
  (fp.eq a!3 ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd87221858bc59c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) m_ack!424)
                                   ((_ to_fp 11 53) a_ack!420))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (CF_cos (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) m_ack!424)
                                   a!1))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #x3ff0000000000000))
         (CF_cos (fp.add roundNearestTiesToEven ((_ to_fp 11 53) m_ack!424) a!1))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd87221858bc59c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) m_ack!424)
                                   ((_ to_fp 11 53) a_ack!420))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (CF_cos (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) m_ack!424)
                                   a!1))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (or (fp.isNaN (fp.abs a!2))
           (fp.eq (fp.abs a!2) ((_ to_fp 11 53) #x7ff0000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd87221858bc59c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) m_ack!424)
                                   ((_ to_fp 11 53) a_ack!420))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (CF_cos (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) m_ack!424)
                                   a!1))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.leq a!2
          (fp.add roundNearestTiesToEven
                  (CF_cos m_ack!424)
                  ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd87221858bc59c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) m_ack!424)
                                   ((_ to_fp 11 53) a_ack!420))))))
  (fp.lt (fp.add roundNearestTiesToEven ((_ to_fp 11 53) m_ack!424) a!1)
         ((_ to_fp 11 53) m_ack!424))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!423)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsabs_ack!422)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!420) ((_ to_fp 11 53) m_ack!424))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!420) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!420) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) m_ack!424) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!420))
            (fp.abs ((_ to_fp 11 53) m_ack!424)))))
(assert (FPCHECK_FMUL_ACCURACY epsrel_ack!423 (fp.abs ((_ to_fp 11 53) m_ack!424))))

(check-sat)
(exit)
