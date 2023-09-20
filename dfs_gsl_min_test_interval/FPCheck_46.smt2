(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun a_ack!328 () (_ BitVec 64))
(declare-fun b_ack!329 () (_ BitVec 64))
(declare-fun m_ack!330 () (_ BitVec 64))
(declare-fun CF_cos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     (CF_cos a_ack!328)
                                     ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  (CF_cos a_ack!328)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!1 a!2))))
(assert (let ((a!1 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     (CF_cos b_ack!329)
                                     ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  (CF_cos b_ack!329)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!1 a!2))))
(assert (let ((a!1 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     (CF_cos m_ack!330)
                                     ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  (CF_cos m_ack!330)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!1 a!2))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!328) ((_ to_fp 11 53) b_ack!329))))
(assert (not (fp.geq ((_ to_fp 11 53) m_ack!330) ((_ to_fp 11 53) b_ack!329))))
(assert (not (fp.leq ((_ to_fp 11 53) m_ack!330) ((_ to_fp 11 53) a_ack!328))))
(assert (not (fp.geq (fp.add roundNearestTiesToEven
                     (CF_cos m_ack!330)
                     ((_ to_fp 11 53) #x3ff0000000000000))
             (fp.add roundNearestTiesToEven
                     (CF_cos a_ack!328)
                     ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (not (fp.geq (fp.add roundNearestTiesToEven
                     (CF_cos m_ack!330)
                     ((_ to_fp 11 53) #x3ff0000000000000))
             (fp.add roundNearestTiesToEven
                     (CF_cos b_ack!329)
                     ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!329)
                       ((_ to_fp 11 53) a_ack!328))
               ((_ to_fp 11 53) a_ack!328))
       ((_ to_fp 11 53) b_ack!329)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!329)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!329)
                       ((_ to_fp 11 53) a_ack!328)))
       ((_ to_fp 11 53) a_ack!328)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd87221858bc59c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!329)
                           ((_ to_fp 11 53) a_ack!328)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven ((_ to_fp 11 53) a_ack!328) a!1)
                 ((_ to_fp 11 53) a_ack!328))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd87221858bc59c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!329)
                           ((_ to_fp 11 53) a_ack!328)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven ((_ to_fp 11 53) a_ack!328) a!1)
                 a!1)
         ((_ to_fp 11 53) a_ack!328))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!328)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd87221858bc59c)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!329)
                                   ((_ to_fp 11 53) a_ack!328))))))
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
                       ((_ to_fp 11 53) m_ack!330)
                       ((_ to_fp 11 53) a_ack!328))
               ((_ to_fp 11 53) a_ack!328))
       ((_ to_fp 11 53) m_ack!330)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) m_ack!330)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) m_ack!330)
                       ((_ to_fp 11 53) a_ack!328)))
       ((_ to_fp 11 53) a_ack!328)))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) #x0000000000000000)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3e50000000000000)
                          (fp.abs ((_ to_fp 11 53) m_ack!330))))))
  (not a!1)))
(assert (let ((a!1 (fp.lt ((_ to_fp 11 53) m_ack!330)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fe0000000000000)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!328)
                                  ((_ to_fp 11 53) b_ack!329))))))
  (not a!1)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3fd87221858bc59c
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) m_ack!330)
                  ((_ to_fp 11 53) a_ack!328)))))

(check-sat)
(exit)
