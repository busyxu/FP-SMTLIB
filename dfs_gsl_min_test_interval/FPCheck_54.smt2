(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun a_ack!400 () (_ BitVec 64))
(declare-fun b_ack!401 () (_ BitVec 64))
(declare-fun m_ack!404 () (_ BitVec 64))
(declare-fun CF_cos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun epsrel_ack!403 () (_ BitVec 64))
(declare-fun epsabs_ack!402 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (let ((a!1 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     (CF_cos a_ack!400)
                                     ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  (CF_cos a_ack!400)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!1 a!2))))
(assert (let ((a!1 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     (CF_cos b_ack!401)
                                     ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  (CF_cos b_ack!401)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!1 a!2))))
(assert (let ((a!1 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     (CF_cos m_ack!404)
                                     ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  (CF_cos m_ack!404)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!1 a!2))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!400) ((_ to_fp 11 53) b_ack!401))))
(assert (not (fp.geq ((_ to_fp 11 53) m_ack!404) ((_ to_fp 11 53) b_ack!401))))
(assert (not (fp.leq ((_ to_fp 11 53) m_ack!404) ((_ to_fp 11 53) a_ack!400))))
(assert (not (fp.geq (fp.add roundNearestTiesToEven
                     (CF_cos m_ack!404)
                     ((_ to_fp 11 53) #x3ff0000000000000))
             (fp.add roundNearestTiesToEven
                     (CF_cos a_ack!400)
                     ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (not (fp.geq (fp.add roundNearestTiesToEven
                     (CF_cos m_ack!404)
                     ((_ to_fp 11 53) #x3ff0000000000000))
             (fp.add roundNearestTiesToEven
                     (CF_cos b_ack!401)
                     ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!401)
                       ((_ to_fp 11 53) a_ack!400))
               ((_ to_fp 11 53) a_ack!400))
       ((_ to_fp 11 53) b_ack!401)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!401)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!401)
                       ((_ to_fp 11 53) a_ack!400)))
       ((_ to_fp 11 53) a_ack!400)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd87221858bc59c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!401)
                           ((_ to_fp 11 53) a_ack!400)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven ((_ to_fp 11 53) a_ack!400) a!1)
                 ((_ to_fp 11 53) a_ack!400))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd87221858bc59c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!401)
                           ((_ to_fp 11 53) a_ack!400)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven ((_ to_fp 11 53) a_ack!400) a!1)
                 a!1)
         ((_ to_fp 11 53) a_ack!400))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!400)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd87221858bc59c)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!401)
                                   ((_ to_fp 11 53) a_ack!400))))))
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
                       ((_ to_fp 11 53) m_ack!404)
                       ((_ to_fp 11 53) a_ack!400))
               ((_ to_fp 11 53) a_ack!400))
       ((_ to_fp 11 53) m_ack!404)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) m_ack!404)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) m_ack!404)
                       ((_ to_fp 11 53) a_ack!400)))
       ((_ to_fp 11 53) a_ack!400)))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) #x0000000000000000)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3e50000000000000)
                          (fp.abs ((_ to_fp 11 53) m_ack!404))))))
  (not a!1)))
(assert (let ((a!1 (fp.lt ((_ to_fp 11 53) m_ack!404)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fe0000000000000)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!400)
                                  ((_ to_fp 11 53) b_ack!401))))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd87221858bc59c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) m_ack!404)
                                   ((_ to_fp 11 53) a_ack!400))))))
  (fp.geq (fp.abs a!1)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3e50000000000000)
                  (fp.abs ((_ to_fp 11 53) m_ack!404))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd87221858bc59c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) m_ack!404)
                                   ((_ to_fp 11 53) a_ack!400))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (CF_cos (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) m_ack!404)
                                   a!1))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (CF_cos (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) m_ack!404)
                                   a!1)))))
  (fp.eq a!3 ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd87221858bc59c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) m_ack!404)
                                   ((_ to_fp 11 53) a_ack!400))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (CF_cos (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) m_ack!404)
                                   a!1))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #x3ff0000000000000))
         (CF_cos (fp.add roundNearestTiesToEven ((_ to_fp 11 53) m_ack!404) a!1))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd87221858bc59c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) m_ack!404)
                                   ((_ to_fp 11 53) a_ack!400))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (CF_cos (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) m_ack!404)
                                   a!1))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (or (fp.isNaN (fp.abs a!2))
           (fp.eq (fp.abs a!2) ((_ to_fp 11 53) #x7ff0000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd87221858bc59c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) m_ack!404)
                                   ((_ to_fp 11 53) a_ack!400))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (CF_cos (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) m_ack!404)
                                   a!1))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.leq a!2
          (fp.add roundNearestTiesToEven
                  (CF_cos m_ack!404)
                  ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd87221858bc59c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) m_ack!404)
                                   ((_ to_fp 11 53) a_ack!400))))))
  (fp.lt (fp.add roundNearestTiesToEven ((_ to_fp 11 53) m_ack!404) a!1)
         ((_ to_fp 11 53) m_ack!404))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!403)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsabs_ack!402)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!400) ((_ to_fp 11 53) m_ack!404))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!400) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!400) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) m_ack!404) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!400))
            (fp.abs ((_ to_fp 11 53) m_ack!404)))))
(assert (FPCHECK_FMUL_OVERFLOW epsrel_ack!403 (fp.abs ((_ to_fp 11 53) m_ack!404))))

(check-sat)
(exit)
