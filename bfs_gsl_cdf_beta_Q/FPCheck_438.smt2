(declare-fun x_ack!2150 () (_ BitVec 64))
(declare-fun nu1_ack!2148 () (_ BitVec 64))
(declare-fun nu2_ack!2149 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2150) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!2150) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!2150) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!2150) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu1_ack!2148) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (fp.gt ((_ to_fp 11 53) nu2_ack!2149) ((_ to_fp 11 53) #x40f86a0000000000)))
(assert (fp.lt ((_ to_fp 11 53) nu1_ack!2148) ((_ to_fp 11 53) #x4024000000000000)))
(assert (let ((a!1 (fp.lt ((_ to_fp 11 53) x_ack!2150)
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) nu2_ack!2149)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu1_ack!2148)
                                  ((_ to_fp 11 53) nu2_ack!2149))))))
  (not a!1)))
(assert (not (fp.eq ((_ to_fp 11 53) nu1_ack!2148) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu2_ack!2149) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) nu1_ack!2148) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.eq ((_ to_fp 11 53) nu1_ack!2148) (CF_floor nu1_ack!2148))
                  #x00000001
                  #x00000000))))
  (not (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!2149) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu1_ack!2148) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!2148)
                       ((_ to_fp 11 53) nu2_ack!2149))
               ((_ to_fp 11 53) nu1_ack!2148))
       ((_ to_fp 11 53) nu2_ack!2149)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!2148)
                       ((_ to_fp 11 53) nu2_ack!2149))
               ((_ to_fp 11 53) nu2_ack!2149))
       ((_ to_fp 11 53) nu1_ack!2148)))
(assert (FPCHECK_FSUB_ACCURACY nu1_ack!2148 #x3ff0000000000000))

(check-sat)
(exit)
