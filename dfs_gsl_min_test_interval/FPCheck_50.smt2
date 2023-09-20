(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun a_ack!358 () (_ BitVec 64))
(declare-fun b_ack!359 () (_ BitVec 64))
(declare-fun m_ack!360 () (_ BitVec 64))
(declare-fun CF_cos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (let ((a!1 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     (CF_cos a_ack!358)
                                     ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  (CF_cos a_ack!358)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!1 a!2))))
(assert (let ((a!1 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     (CF_cos b_ack!359)
                                     ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  (CF_cos b_ack!359)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!1 a!2))))
(assert (let ((a!1 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     (CF_cos m_ack!360)
                                     ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  (CF_cos m_ack!360)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!1 a!2))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!358) ((_ to_fp 11 53) b_ack!359))))
(assert (not (fp.geq ((_ to_fp 11 53) m_ack!360) ((_ to_fp 11 53) b_ack!359))))
(assert (not (fp.leq ((_ to_fp 11 53) m_ack!360) ((_ to_fp 11 53) a_ack!358))))
(assert (not (fp.geq (fp.add roundNearestTiesToEven
                     (CF_cos m_ack!360)
                     ((_ to_fp 11 53) #x3ff0000000000000))
             (fp.add roundNearestTiesToEven
                     (CF_cos a_ack!358)
                     ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (not (fp.geq (fp.add roundNearestTiesToEven
                     (CF_cos m_ack!360)
                     ((_ to_fp 11 53) #x3ff0000000000000))
             (fp.add roundNearestTiesToEven
                     (CF_cos b_ack!359)
                     ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!359)
                       ((_ to_fp 11 53) a_ack!358))
               ((_ to_fp 11 53) a_ack!358))
       ((_ to_fp 11 53) b_ack!359)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!359)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!359)
                       ((_ to_fp 11 53) a_ack!358)))
       ((_ to_fp 11 53) a_ack!358)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd87221858bc59c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!359)
                           ((_ to_fp 11 53) a_ack!358)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven ((_ to_fp 11 53) a_ack!358) a!1)
                 ((_ to_fp 11 53) a_ack!358))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd87221858bc59c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!359)
                           ((_ to_fp 11 53) a_ack!358)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven ((_ to_fp 11 53) a_ack!358) a!1)
                 a!1)
         ((_ to_fp 11 53) a_ack!358))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!358)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd87221858bc59c)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!359)
                                   ((_ to_fp 11 53) a_ack!358))))))
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
                       ((_ to_fp 11 53) m_ack!360)
                       ((_ to_fp 11 53) a_ack!358))
               ((_ to_fp 11 53) a_ack!358))
       ((_ to_fp 11 53) m_ack!360)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) m_ack!360)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) m_ack!360)
                       ((_ to_fp 11 53) a_ack!358)))
       ((_ to_fp 11 53) a_ack!358)))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) #x0000000000000000)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3e50000000000000)
                          (fp.abs ((_ to_fp 11 53) m_ack!360))))))
  (not a!1)))
(assert (let ((a!1 (fp.lt ((_ to_fp 11 53) m_ack!360)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fe0000000000000)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!358)
                                  ((_ to_fp 11 53) b_ack!359))))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd87221858bc59c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) m_ack!360)
                                   ((_ to_fp 11 53) a_ack!358))))))
  (fp.geq (fp.abs a!1)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3e50000000000000)
                  (fp.abs ((_ to_fp 11 53) m_ack!360))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd87221858bc59c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) m_ack!360)
                                   ((_ to_fp 11 53) a_ack!358))))))
  (FPCHECK_FADD_ACCURACY m_ack!360 a!1)))

(check-sat)
(exit)
