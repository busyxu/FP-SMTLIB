(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun a_ack!112 () (_ BitVec 64))
(declare-fun b_ack!113 () (_ BitVec 64))
(declare-fun m_ack!114 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     (CF_cos a_ack!112)
                                     ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  (CF_cos a_ack!112)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!1 a!2))))
(assert (let ((a!1 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     (CF_cos b_ack!113)
                                     ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  (CF_cos b_ack!113)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!1 a!2))))
(assert (let ((a!1 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     (CF_cos m_ack!114)
                                     ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  (CF_cos m_ack!114)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!1 a!2))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!112) ((_ to_fp 11 53) b_ack!113))))
(assert (not (fp.geq ((_ to_fp 11 53) m_ack!114) ((_ to_fp 11 53) b_ack!113))))
(assert (not (fp.leq ((_ to_fp 11 53) m_ack!114) ((_ to_fp 11 53) a_ack!112))))
(assert (not (fp.geq (fp.add roundNearestTiesToEven
                     (CF_cos m_ack!114)
                     ((_ to_fp 11 53) #x3ff0000000000000))
             (fp.add roundNearestTiesToEven
                     (CF_cos a_ack!112)
                     ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (not (fp.geq (fp.add roundNearestTiesToEven
                     (CF_cos m_ack!114)
                     ((_ to_fp 11 53) #x3ff0000000000000))
             (fp.add roundNearestTiesToEven
                     (CF_cos b_ack!113)
                     ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!113)
                       ((_ to_fp 11 53) a_ack!112))
               ((_ to_fp 11 53) a_ack!112))
       ((_ to_fp 11 53) b_ack!113)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!113)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!113)
                       ((_ to_fp 11 53) a_ack!112)))
       ((_ to_fp 11 53) a_ack!112)))
(assert (FPCHECK_FADD_UNDERFLOW
  a_ack!112
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fd87221858bc59c)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!113)
                  ((_ to_fp 11 53) a_ack!112)))))

(check-sat)
(exit)
