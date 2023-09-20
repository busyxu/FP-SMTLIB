(declare-fun limit_ack!512 () (_ BitVec 64))
(declare-fun a_ack!513 () (_ BitVec 64))
(declare-fun b_ack!508 () (_ BitVec 64))
(declare-fun epsabs_ack!510 () (_ BitVec 64))
(declare-fun epsrel_ack!511 () (_ BitVec 64))
(declare-fun c_ack!509 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!512)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!508) ((_ to_fp 11 53) a_ack!513))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!510) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!511)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!511)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!509) ((_ to_fp 11 53) a_ack!513))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!509) ((_ to_fp 11 53) b_ack!508))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!509))
                   ((_ to_fp 11 53) b_ack!508))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!513))
                 ((_ to_fp 11 53) a_ack!513))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!509))
                   ((_ to_fp 11 53) b_ack!508))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!513)))
         ((_ to_fp 11 53) a_ack!513))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!509))
                           ((_ to_fp 11 53) b_ack!508))
                   ((_ to_fp 11 53) a_ack!513))))
(let ((a!2 (and (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))
                (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) b_ack!508)
                               ((_ to_fp 11 53) a_ack!513))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!509))
                           ((_ to_fp 11 53) b_ack!508))
                   ((_ to_fp 11 53) a_ack!513))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!508)
                                   ((_ to_fp 11 53) a_ack!513))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (FPCHECK_FMUL_ACCURACY #x3ff0000000000000 b_ack!508))

(check-sat)
(exit)
