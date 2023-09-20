(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun a_ack!88 () (_ BitVec 64))
(declare-fun b_ack!89 () (_ BitVec 64))
(declare-fun m_ack!90 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     (CF_cos a_ack!88)
                                     ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  (CF_cos a_ack!88)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!1 a!2))))
(assert (let ((a!1 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     (CF_cos b_ack!89)
                                     ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  (CF_cos b_ack!89)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!1 a!2))))
(assert (let ((a!1 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     (CF_cos m_ack!90)
                                     ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  (CF_cos m_ack!90)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!1 a!2))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!88) ((_ to_fp 11 53) b_ack!89))))
(assert (not (fp.geq ((_ to_fp 11 53) m_ack!90) ((_ to_fp 11 53) b_ack!89))))
(assert (not (fp.leq ((_ to_fp 11 53) m_ack!90) ((_ to_fp 11 53) a_ack!88))))
(assert (not (fp.geq (fp.add roundNearestTiesToEven
                     (CF_cos m_ack!90)
                     ((_ to_fp 11 53) #x3ff0000000000000))
             (fp.add roundNearestTiesToEven
                     (CF_cos a_ack!88)
                     ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (not (fp.geq (fp.add roundNearestTiesToEven
                     (CF_cos m_ack!90)
                     ((_ to_fp 11 53) #x3ff0000000000000))
             (fp.add roundNearestTiesToEven
                     (CF_cos b_ack!89)
                     ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!89)
                       ((_ to_fp 11 53) a_ack!88))
               ((_ to_fp 11 53) a_ack!88))
       ((_ to_fp 11 53) b_ack!89)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!89)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!89)
                       ((_ to_fp 11 53) a_ack!88)))
       ((_ to_fp 11 53) a_ack!88)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3fd87221858bc59c
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!89)
          ((_ to_fp 11 53) a_ack!88))))

(check-sat)
(exit)
