(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun a_ack!262 () (_ BitVec 64))
(declare-fun b_ack!263 () (_ BitVec 64))
(declare-fun m_ack!264 () (_ BitVec 64))
(declare-fun CF_cos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (let ((a!1 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     (CF_cos a_ack!262)
                                     ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  (CF_cos a_ack!262)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!1 a!2))))
(assert (let ((a!1 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     (CF_cos b_ack!263)
                                     ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  (CF_cos b_ack!263)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!1 a!2))))
(assert (let ((a!1 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     (CF_cos m_ack!264)
                                     ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  (CF_cos m_ack!264)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!1 a!2))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!262) ((_ to_fp 11 53) b_ack!263))))
(assert (not (fp.geq ((_ to_fp 11 53) m_ack!264) ((_ to_fp 11 53) b_ack!263))))
(assert (not (fp.leq ((_ to_fp 11 53) m_ack!264) ((_ to_fp 11 53) a_ack!262))))
(assert (not (fp.geq (fp.add roundNearestTiesToEven
                     (CF_cos m_ack!264)
                     ((_ to_fp 11 53) #x3ff0000000000000))
             (fp.add roundNearestTiesToEven
                     (CF_cos a_ack!262)
                     ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (not (fp.geq (fp.add roundNearestTiesToEven
                     (CF_cos m_ack!264)
                     ((_ to_fp 11 53) #x3ff0000000000000))
             (fp.add roundNearestTiesToEven
                     (CF_cos b_ack!263)
                     ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!263)
                       ((_ to_fp 11 53) a_ack!262))
               ((_ to_fp 11 53) a_ack!262))
       ((_ to_fp 11 53) b_ack!263)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!263)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!263)
                       ((_ to_fp 11 53) a_ack!262)))
       ((_ to_fp 11 53) a_ack!262)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd87221858bc59c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!263)
                           ((_ to_fp 11 53) a_ack!262)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven ((_ to_fp 11 53) a_ack!262) a!1)
                 ((_ to_fp 11 53) a_ack!262))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd87221858bc59c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!263)
                           ((_ to_fp 11 53) a_ack!262)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven ((_ to_fp 11 53) a_ack!262) a!1)
                 a!1)
         ((_ to_fp 11 53) a_ack!262))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!262)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd87221858bc59c)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!263)
                                   ((_ to_fp 11 53) a_ack!262))))))
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
                       ((_ to_fp 11 53) m_ack!264)
                       ((_ to_fp 11 53) a_ack!262))
               ((_ to_fp 11 53) a_ack!262))
       ((_ to_fp 11 53) m_ack!264)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) m_ack!264)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) m_ack!264)
                       ((_ to_fp 11 53) a_ack!262)))
       ((_ to_fp 11 53) a_ack!262)))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) #x0000000000000000)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3e50000000000000)
                          (fp.abs ((_ to_fp 11 53) m_ack!264))))))
  (not a!1)))
(assert (fp.lt ((_ to_fp 11 53) m_ack!264)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fe0000000000000)
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!262)
                       ((_ to_fp 11 53) b_ack!263)))))
(assert (FPCHECK_FSUB_OVERFLOW b_ack!263 m_ack!264))

(check-sat)
(exit)
