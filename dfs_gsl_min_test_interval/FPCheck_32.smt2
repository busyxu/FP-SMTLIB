(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun a_ack!232 () (_ BitVec 64))
(declare-fun b_ack!233 () (_ BitVec 64))
(declare-fun m_ack!234 () (_ BitVec 64))
(declare-fun CF_cos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (let ((a!1 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     (CF_cos a_ack!232)
                                     ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  (CF_cos a_ack!232)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!1 a!2))))
(assert (let ((a!1 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     (CF_cos b_ack!233)
                                     ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  (CF_cos b_ack!233)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!1 a!2))))
(assert (let ((a!1 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     (CF_cos m_ack!234)
                                     ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  (CF_cos m_ack!234)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!1 a!2))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!232) ((_ to_fp 11 53) b_ack!233))))
(assert (not (fp.geq ((_ to_fp 11 53) m_ack!234) ((_ to_fp 11 53) b_ack!233))))
(assert (not (fp.leq ((_ to_fp 11 53) m_ack!234) ((_ to_fp 11 53) a_ack!232))))
(assert (not (fp.geq (fp.add roundNearestTiesToEven
                     (CF_cos m_ack!234)
                     ((_ to_fp 11 53) #x3ff0000000000000))
             (fp.add roundNearestTiesToEven
                     (CF_cos a_ack!232)
                     ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (not (fp.geq (fp.add roundNearestTiesToEven
                     (CF_cos m_ack!234)
                     ((_ to_fp 11 53) #x3ff0000000000000))
             (fp.add roundNearestTiesToEven
                     (CF_cos b_ack!233)
                     ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!233)
                       ((_ to_fp 11 53) a_ack!232))
               ((_ to_fp 11 53) a_ack!232))
       ((_ to_fp 11 53) b_ack!233)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!233)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!233)
                       ((_ to_fp 11 53) a_ack!232)))
       ((_ to_fp 11 53) a_ack!232)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd87221858bc59c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!233)
                           ((_ to_fp 11 53) a_ack!232)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven ((_ to_fp 11 53) a_ack!232) a!1)
                 ((_ to_fp 11 53) a_ack!232))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd87221858bc59c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!233)
                           ((_ to_fp 11 53) a_ack!232)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven ((_ to_fp 11 53) a_ack!232) a!1)
                 a!1)
         ((_ to_fp 11 53) a_ack!232))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!232)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd87221858bc59c)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!233)
                                   ((_ to_fp 11 53) a_ack!232))))))
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
                       ((_ to_fp 11 53) m_ack!234)
                       ((_ to_fp 11 53) a_ack!232))
               ((_ to_fp 11 53) a_ack!232))
       ((_ to_fp 11 53) m_ack!234)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) m_ack!234)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) m_ack!234)
                       ((_ to_fp 11 53) a_ack!232)))
       ((_ to_fp 11 53) a_ack!232)))
(assert (FPCHECK_FADD_ACCURACY a_ack!232 b_ack!233))

(check-sat)
(exit)
